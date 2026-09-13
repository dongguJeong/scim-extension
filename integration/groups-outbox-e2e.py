"""Real MariaDB outbox + fault proxy + Keycloak recreation. Existing services remain running."""
import http.server, http.client, urllib.request, urllib.error, urllib.parse
import subprocess, json, os, time, threading, uuid
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
TAG=uuid.uuid4().hex[:8]; NAME='scim-outbox-e2e-'+TAG; DB='scim_e2e_'+TAG
KC='http://127.0.0.1:18081'; SCIM='http://127.0.0.1:3000/scim/v2'
state={'online':True}; realm='queue-test-'+TAG; token=''; token_time=0

def docker(*args): return subprocess.check_output(['docker',*args],text=True).strip()
def sql(statement): return docker('exec','keycloak-mariadb','sh','-c','MYSQL_PWD="$MARIADB_ROOT_PASSWORD" mariadb -uroot -N -e "$1"','sh',statement)
class Proxy(http.server.BaseHTTPRequestHandler):
 def log_message(self,*a): pass
 def do_GET(self): self.forward()
 def do_POST(self): self.forward()
 def do_PUT(self): self.forward()
 def do_PATCH(self): self.forward()
 def do_DELETE(self): self.forward()
 def forward(self):
  body=self.rfile.read(int(self.headers.get('Content-Length','0')))
  if not state['online']:
   self.send_response(503); self.end_headers(); self.wfile.write(b'{"detail":"test outage"}'); return
  request=urllib.request.Request('http://127.0.0.1:3000'+self.path,data=body if body else None,method=self.command,headers={'Content-Type':'application/scim+json'})
  try: response=urllib.request.urlopen(request,timeout=15)
  except urllib.error.HTTPError as e: response=e
  with response:
   data=response.read(); self.send_response(response.code); self.send_header('Content-Type','application/scim+json');self.send_header('Content-Length',str(len(data)));self.end_headers();self.wfile.write(data)

def raw(method,url,body=None,headers=None):
 data=json.dumps(body).encode() if body is not None else None
 with urllib.request.urlopen(urllib.request.Request(url,data=data,method=method,headers=headers or {'Content-Type':'application/json'}),timeout=20) as r:
  data=r.read(); return (json.loads(data) if data else None),r.headers

def auth():
 global token,token_time
 payload=urllib.parse.urlencode({'client_id':'admin-cli','username':'root','password':'root','grant_type':'password'}).encode()
 with urllib.request.urlopen(urllib.request.Request(KC+'/realms/master/protocol/openid-connect/token',data=payload),timeout=10) as r: token=json.load(r)['access_token'];token_time=time.monotonic()
def api(method,path,body=None):
 if time.monotonic()-token_time>35: auth()
 return raw(method,KC+'/admin/realms'+path,body,{'Authorization':'Bearer '+token,'Content-Type':'application/json'})
def resources(kind,id): return raw('GET',SCIM+'/'+kind+'?'+urllib.parse.urlencode({'filter':'externalId eq "'+id+'"'}))[0]['Resources']
def wait(check,description,seconds=90):
 end=time.monotonic()+seconds
 while time.monotonic()<end:
  try:
   result=check()
   if result: return result
  except (urllib.error.URLError,ConnectionError,http.client.RemoteDisconnected,TimeoutError): pass
  time.sleep(.4)
 raise AssertionError(description)
def start():
 docker('run','-d','--name',NAME,'--network','keycloak_net','-p','127.0.0.1:18081:8080',
  '-e','KC_BOOTSTRAP_ADMIN_USERNAME=root','-e','KC_BOOTSTRAP_ADMIN_PASSWORD=root','-e','KC_DB=mariadb',
  '-e','KC_DB_URL=jdbc:mariadb://keycloak-mariadb:3306/'+DB,'-e','KC_DB_USERNAME=root','-e','KC_DB_PASSWORD=root',
  '-e','JAVA_OPTS_APPEND=-Dscim.baseUrl=http://host.docker.internal:13001/scim/v2',
  '-v',str(ROOT/'target/scim-outbound-extension-0.2.0.jar')+':/opt/keycloak/providers/scim.jar:ro','quay.io/keycloak/keycloak:26.7.3','start-dev')
 wait(lambda: (auth() or True),'Keycloak startup',120)
def stop(label):
 try:
  (ROOT/'context'/('e2e-'+label+'.log')).write_text(docker('logs',NAME))
 finally: docker('rm','-f',NAME)
def empty(): return sql('SELECT COUNT(*) FROM '+DB+'.SCIM_OUTBOX')=='0'
def create_user(suffix):
 return api('POST','/'+realm+'/users',{'username':realm+suffix,'enabled':True})[1]['Location'].rsplit('/',1)[1]
def group(path,name): return api('POST','/'+realm+path,{'name':name})[1]['Location'].rsplit('/',1)[1]
server=http.server.ThreadingHTTPServer(('0.0.0.0',13001),Proxy);threading.Thread(target=server.serve_forever,daemon=True).start()
ids=[]; gids=[]; started=False
try:
 sql('CREATE DATABASE '+DB+' CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci')
 start();started=True
 env=dict(os.environ,KEYCLOAK_URL=KC)
 subprocess.run(['python3',str(ROOT/'integration/e2e.py')],env=env,check=True)
 wait(empty,'baseline outbox drained')
 api('POST','',{'realm':realm,'enabled':True,'eventsListeners':['scim-admin-listener'],'adminEventsEnabled':True})
 uid=create_user('-member');ids.append(uid)
 parent=group('/groups',realm+'-parent');gids.append(parent)
 child=group('/groups/'+parent+'/children','child');gids.append(child)
 api('PUT','/'+realm+'/users/'+uid+'/groups/'+child)
 wait(lambda:len(resources('Groups',child))==1 and len(resources('Groups',child)[0].get('members',[]))==1,'child membership')
 assert resources('Groups',child)[0]['displayName']==realm+'-parent/child'
 assert resources('Groups',child)[0]['members'][0]['value']==resources('Users',uid)[0]['id']
 print('PASS group creation, nested path, member UUID translation',flush=True)
 api('PUT','/'+realm+'/groups/'+parent,{'name':realm+'-renamed'})
 wait(lambda:resources('Groups',child)[0]['displayName']==realm+'-renamed/child','parent rename propagated')
 api('DELETE','/'+realm+'/users/'+uid+'/groups/'+child)
 wait(lambda:resources('Groups',child)[0].get('members',[])==[],'membership removal')
 api('PUT','/'+realm+'/users/'+uid+'/groups/'+child)
 wait(lambda:len(resources('Groups',child)[0].get('members',[]))==1,'membership re-add')
 api('DELETE','/'+realm+'/groups/'+parent)
 wait(lambda:not resources('Groups',parent) and not resources('Groups',child),'cascade group deletion')
 print('PASS rename, member removal/re-add, cascading group deletion',flush=True)
 wait(empty,'queue drained before outage')
 state['online']=False
 delayed=create_user('-outage');ids.append(delayed)
 late_group=group('/groups',realm+'-late');gids.append(late_group)
 api('PUT','/'+realm+'/users/'+delayed+'/groups/'+late_group)
 wait(lambda:int(sql('SELECT COALESCE(MAX(ATTEMPTS),0) FROM '+DB+'.SCIM_OUTBOX'))>0,'failure recorded')
 before=int(sql('SELECT COUNT(*) FROM '+DB+'.SCIM_OUTBOX'));assert before>=3
 assert not resources('Users',delayed)
 print('PASS outage: committed admin changes retained in MariaDB outbox',flush=True)
 stop('before-recreate');started=False
 start();started=True
 assert int(sql('SELECT COUNT(*) FROM '+DB+'.SCIM_OUTBOX'))==before
 state['online']=True
 wait(lambda:len(resources('Groups',late_group))==1 and len(resources('Groups',late_group)[0].get('members',[]))==1,'recovery after recreation')
 wait(empty,'all pending work acknowledged')
 assert len(resources('Users',delayed))==1
 print('PASS container recreation: retained queue resumes without duplicate users/groups',flush=True)
 # A failed administrative mutation must not add work.
 try: api('POST','/'+realm+'/users',{'username':realm+'-outage'})
 except urllib.error.HTTPError as e: assert e.code==409
 else: raise AssertionError('Expected duplicate username rejection')
 assert empty()
 print('PASS rejected admin mutation leaves no outbox entry',flush=True)
 for gid in [late_group]: api('DELETE','/'+realm+'/groups/'+gid)
 for uid in ids: api('DELETE','/'+realm+'/users/'+uid)
 wait(empty,'cleanup deliveries')
 api('DELETE','/'+realm)
 print('ALL GROUP/OUTBOX E2E CHECKS PASSED',flush=True)
finally:
 state['online']=True
 if started: stop('final')
 for kind,values in [('Groups',gids),('Users',ids)]:
  for key in values:
   for r in resources(kind,key): raw('DELETE',SCIM+'/'+kind+'/'+r['id'])
 sql('DROP DATABASE IF EXISTS '+DB)
 server.shutdown()

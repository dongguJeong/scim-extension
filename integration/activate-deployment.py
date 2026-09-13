import urllib.request, urllib.parse, json
from pathlib import Path
base='http://127.0.0.1:8080';root=Path(__file__).resolve().parents[1]
data=urllib.parse.urlencode({'client_id':'admin-cli','username':'root','password':'root','grant_type':'password'}).encode()
with urllib.request.urlopen(urllib.request.Request(base+'/realms/master/protocol/openid-connect/token',data=data)) as r: token=json.load(r)['access_token']
def req(method,path,body=None):
 with urllib.request.urlopen(urllib.request.Request(base+path,method=method,data=json.dumps(body).encode() if body is not None else None,headers={'Authorization':'Bearer '+token,'Content-Type':'application/json'})) as r:
  data=r.read();return json.loads(data) if data else None
before=[]
for realm in req('GET','/admin/realms'):
 name=realm['realm'];path='/admin/realms/'+urllib.parse.quote(name)
 detail=req('GET',path)
 if 'keycloak-scim-outbound' not in detail.get('eventsListeners',[]) and name!='master': continue
 components=req('GET',path+'/components');before.append({'realm':detail,'components':components})
 backup=root/'context/backups/activation.before.json'
 if not backup.exists(): backup.write_text(json.dumps(before,indent=2));backup.chmod(0o600)
 listeners=[x for x in detail.get('eventsListeners',[]) if x not in ['keycloak-scim-outbound','scim-admin-listener']]+['scim-admin-listener']
 req('PUT',path,{'eventsListeners':listeners})
 for c in components:
  if c.get('providerId')=='keycloak-scim-outbound':
   # Obsolete outbound-only component; no federated users are linked (verified before migration).
   req('DELETE',path+'/components/'+c['id'])
 print('Activated',name,req('GET',path)['eventsListeners'])

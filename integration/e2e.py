"""Exercise the installed listener through Keycloak admin APIs and real SCIM storage."""
import http.client
import json, os, time, urllib.request, urllib.parse, urllib.error, uuid
KC=os.getenv('KEYCLOAK_URL','http://127.0.0.1:18080')
SCIM=os.getenv('SCIM_URL','http://127.0.0.1:3000/scim/v2')
realm='scim-e2e-'+uuid.uuid4().hex[:10]
token=None
created=[]
def req(method,url,body=None,auth=False,form=False):
    data=(urllib.parse.urlencode(body).encode() if form else json.dumps(body).encode()) if body is not None else None
    headers={'Content-Type':'application/x-www-form-urlencoded' if form else 'application/json'}
    if auth: headers['Authorization']='Bearer '+token
    with urllib.request.urlopen(urllib.request.Request(url,data=data,headers=headers,method=method),timeout=20) as r:
        raw=r.read(); return json.loads(raw) if raw else None, r.headers

def users(id):
    return req('GET',SCIM+'/Users?'+urllib.parse.urlencode({'filter':'externalId eq "'+id+'"'}))[0]['Resources']
def wait_for(id,predicate):
    deadline=time.monotonic()+20
    while time.monotonic()<deadline:
        data=users(id)
        if predicate(data): return data
        time.sleep(.2)
    raise AssertionError('SCIM assertion timed out: '+id+' '+str(data))

for attempt in range(120):
    try:
        token=req('POST',KC+'/realms/master/protocol/openid-connect/token',{'client_id':'admin-cli','username':'root','password':'root','grant_type':'password'},form=True)[0]['access_token']; break
    except (urllib.error.URLError,TimeoutError,ConnectionError,http.client.RemoteDisconnected): time.sleep(.5)
else: raise RuntimeError('Keycloak not ready')
root=KC+'/admin/realms/'+realm
try:
    req('POST',KC+'/admin/realms',{'realm':realm,'enabled':True,'eventsListeners':['scim-admin-listener'],'adminEventsEnabled':True,'adminEventsDetailsEnabled':False},True)
    profile=req('GET',root+'/users/profile',auth=True)[0]
    profile['unmanagedAttributePolicy']='ENABLED'
    req('PUT',root+'/users/profile',profile,True)
    name=realm+'-user'
    _,headers=req('POST',root+'/users',{'username':name,'enabled':True,'firstName':'Initial','lastName':'User','email':name+'@example.com',
        'attributes':{'company':['Before'],'phoneNumber':['010-1234-5678'],'ip':['10.0.0.1'],'notExpire':['true']}},True)
    id=headers['Location'].rsplit('/',1)[1]
    initial=wait_for(id,lambda x:len(x)==1 and x[0]['userName']==name)[0]
    created.append(initial['id'])
    assert initial['externalId']==id and initial['active'] is True
    assert initial['displayName']=='Initial User'
    urn='urn:ietf:params:scim:schemas:extension:rbac:2.0:User'
    assert initial[urn]['company']=='Before' and initial[urn]['notExpire'] is True
    assert initial['phoneNumbers'][0]['value']=='010-1234-5678'
    print('PASS create: UUID, profile, attributes, SCIM meta response',flush=True)
    req('PUT',root+'/users/'+id,{'firstName':'Updated','enabled':False},True)
    updated=wait_for(id,lambda x:len(x)==1 and x[0]['active'] is False and x[0]['displayName']=='Updated User')[0]
    assert updated['emails'][0]['value']==name+'@example.com' and updated[urn]['company']=='Before'
    assert updated['id']==initial['id']
    print('PASS partial update: complete snapshot, disabled account, preserved attributes',flush=True)
    req('PUT',root+'/users/'+id,{'enabled':True},True)
    wait_for(id,lambda x:len(x)==1 and x[0]['active'] is True)
    req('DELETE',root+'/users/'+id,auth=True)
    deactivate=os.getenv('DELETE_AS_DEACTIVATE','false')=='true'
    wait_for(id,lambda x:len(x)==1 and x[0]['active'] is False if deactivate else len(x)==0)
    print('PASS rapid re-enable/delete: '+('deactivate PATCH' if deactivate else 'physical DELETE'),flush=True)
finally:
    for sid in created:
        try: req('DELETE',SCIM+'/Users/'+sid)
        except urllib.error.HTTPError as e:
            if e.code != 404: raise
    try: req('DELETE',root,auth=True)
    except urllib.error.HTTPError as e:
        if e.code != 404: raise

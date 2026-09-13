package com.example.keycloak;
import com.example.keycloak.queue.GroupLink;
import com.example.scim.*;
import jakarta.persistence.EntityManager;
import org.keycloak.models.*;
import java.util.*;

/** Reconciles the current realm group tree, including deletion cascades and direct memberships. */
public class GroupSynchronizer {
    private final ScimClient client;
    private final OutboundScimProvider users;
    public GroupSynchronizer(ScimClient client,OutboundScimProvider users) { this.client=client; this.users=users; }
    public void sync(KeycloakSession session,EntityManager em,String realmId) {
        RealmModel realm=session.realms().getRealm(realmId);
        Map<String,GroupModel> current=new LinkedHashMap<>();
        if (realm!=null) session.groups().getTopLevelGroupsStream(realm).forEach(g->collect(g,current));
        List<GroupLink> links=em.createQuery("from ScimGroupLink where realmId=:realm",GroupLink.class).setParameter("realm",realmId).getResultList();
        Map<String,GroupLink> byId=new HashMap<>();
        // Remove old paths before upserting newly-created replacements of the same name.
        for (GroupLink link:links) {
            if (!current.containsKey(link.id)) {
                try { client.resource("DELETE","Groups/"+ScimClient.segment(link.scimId),null); }
                catch(ScimException e) { if(e.getStatus()!=404) throw e; }
                em.remove(link);
            } else byId.put(link.id,link);
        }
        Map<String,String> userIds=new HashMap<>();
        for (GroupModel group:current.values()) {
            List<Map<String,String>> members=new ArrayList<>();
            session.users().getGroupMembersStream(realm,group).forEach(user->{
                String scimId=userIds.computeIfAbsent(user.getId(), key->{
                    users.handleEvent(Map.of("type","UPDATE","user",snapshot(user)));
                    String found=client.findResourceId("Users",key);
                    if(found==null) throw new ScimException("Provisioned member missing");
                    return found;
                });
                members.add(Map.of("value",scimId));
            });
            Map<String,Object> body=Map.of("schemas",List.of("urn:ietf:params:scim:schemas:core:2.0:Group"),
                "externalId",group.getId(),"displayName",path(group),"members",members);
            String id=client.findResourceId("Groups",group.getId());
            if(id==null) {
                try { client.resource("POST","Groups",body); }
                catch(ScimException e) { if(e.getStatus()!=409) throw e; }
                id=client.findResourceId("Groups",group.getId());
                if(id==null) throw new ScimException("Unresolved group conflict");
            }
            client.resource("PUT","Groups/"+ScimClient.segment(id),body);
            GroupLink link=byId.get(group.getId());
            if(link==null) { link=new GroupLink(); link.id=group.getId(); link.realmId=realmId; link.scimId=id; em.persist(link); }
            else link.scimId=id;
        }
    }
    private static void collect(GroupModel group,Map<String,GroupModel> groups) {
        groups.put(group.getId(),group); group.getSubGroupsStream().forEach(child->collect(child,groups));
    }
    static String path(GroupModel group) {
        List<String> names=new ArrayList<>();
        for(GroupModel g=group;g!=null;g=g.getParent()) names.add(g.getName().replace("~","~0").replace("/","~1"));
        Collections.reverse(names); return String.join("/",names);
    }
    public static Map<String,Object> snapshot(UserModel user) {
        Map<String,Object> data=new HashMap<>();
        data.put("id",user.getId()); data.put("username",user.getUsername()); data.put("enabled",user.isEnabled());
        data.put("email",user.getEmail()); data.put("firstName",user.getFirstName()); data.put("lastName",user.getLastName());
        data.put("attributes",user.getAttributes()); return data;
    }
}

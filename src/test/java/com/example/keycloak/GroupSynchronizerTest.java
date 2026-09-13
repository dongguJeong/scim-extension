package com.example.keycloak;
import com.example.scim.*;
import com.example.keycloak.queue.*;
import jakarta.persistence.*;
import org.keycloak.models.*;
import org.junit.jupiter.api.Test;
import java.util.*;
import java.util.stream.Stream;
import static org.mockito.Mockito.*;
import static org.junit.jupiter.api.Assertions.*;
class GroupSynchronizerTest {
 @Test void parentPathEscapesSlashesAndBackoffIsBounded() {
  GroupModel parent=mock(GroupModel.class),child=mock(GroupModel.class);
  when(parent.getName()).thenReturn("Ops/IT"); when(child.getName()).thenReturn("Team~A");when(child.getParent()).thenReturn(parent);
  assertEquals("Ops~1IT/Team~0A",GroupSynchronizer.path(child));
  assertEquals(1000,OutboxWorker.backoff(1));assertEquals(300000,OutboxWorker.backoff(100000));
 }
 @Test void provisionsMemberBeforeGroupAndDeletesRemovedLink() {
  KeycloakSession session=mock(KeycloakSession.class,RETURNS_DEEP_STUBS);
  RealmModel realm=mock(RealmModel.class);GroupModel group=mock(GroupModel.class);UserModel user=mock(UserModel.class);
  when(session.realms().getRealm("r")).thenReturn(realm);
  when(session.groups().getTopLevelGroupsStream(realm)).thenAnswer(x->Stream.of(group));
  when(group.getId()).thenReturn("g");when(group.getName()).thenReturn("team");when(group.getSubGroupsStream()).thenAnswer(x->Stream.empty());
  when(session.users().getGroupMembersStream(realm,group)).thenAnswer(x->Stream.of(user));
  when(user.getId()).thenReturn("u");when(user.getUsername()).thenReturn("alice");when(user.getAttributes()).thenReturn(Map.of());
  EntityManager em=mock(EntityManager.class);TypedQuery<GroupLink> query=mock(TypedQuery.class);
  when(em.createQuery(anyString(),eq(GroupLink.class))).thenReturn(query);when(query.setParameter("realm","r")).thenReturn(query);
  GroupLink removed=new GroupLink();removed.id="old";removed.scimId="s-old";
  when(query.getResultList()).thenReturn(List.of(removed));
  ScimClient client=mock(ScimClient.class);OutboundScimProvider users=mock(OutboundScimProvider.class);
  when(client.findResourceId("Users","u")).thenReturn("s-u");when(client.findResourceId("Groups","g")).thenReturn("s-g");
  new GroupSynchronizer(client,users).sync(session,em,"r");
  var order=inOrder(client,users);order.verify(client).resource("DELETE","Groups/s-old",null);order.verify(users).handleEvent(any());
  order.verify(client).findResourceId("Users","u");order.verify(client).findResourceId("Groups","g");
  order.verify(client).resource(eq("PUT"),eq("Groups/s-g"),argThat(body->((Map<?,?>)body).get("members").equals(List.of(Map.of("value","s-u")))));
  verify(em).remove(removed);verify(em).persist(any(GroupLink.class));
 }
}

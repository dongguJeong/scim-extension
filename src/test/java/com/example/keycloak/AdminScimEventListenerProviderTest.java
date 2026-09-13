package com.example.keycloak;
import com.example.keycloak.queue.OutboxEntry;
import org.junit.jupiter.api.Test;
import org.keycloak.models.*;
import org.keycloak.connections.jpa.JpaConnectionProvider;
import org.keycloak.events.admin.*;
import jakarta.persistence.EntityManager;
import org.mockito.ArgumentCaptor;
import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;
class AdminScimEventListenerProviderTest {
 @Test void insertsIntoExistingTransactionWithoutHttpOrRepresentation() {
  KeycloakSession s=session();
  EntityManager em=s.getProvider(JpaConnectionProvider.class).getEntityManager();
  AdminEvent e=event(ResourceType.USER,"users/u");
  new AdminScimEventListenerProvider(s,true).onEvent(e,false);
  ArgumentCaptor<OutboxEntry> c=ArgumentCaptor.forClass(OutboxEntry.class); verify(em).persist(c.capture());
  assertEquals("u",c.getValue().resourceId); assertEquals("r",c.getValue().realmId); assertEquals("USER",c.getValue().kind);
 }
 @Test void groupAndMembershipBothEnqueueReconciliation() {
  KeycloakSession s=session();
  AdminScimEventListenerProvider p=new AdminScimEventListenerProvider(s,true);
  p.onEvent(event(ResourceType.GROUP,"groups/g"),false);
  p.onEvent(event(ResourceType.GROUP_MEMBERSHIP,"users/u/groups/g"),false);
  verify(s.getProvider(JpaConnectionProvider.class).getEntityManager(),times(2)).persist(argThat(x->((OutboxEntry)x).kind.equals("GROUPS")));
 }
 @Test void failedPersistenceMarksOriginalTransactionRollbackOnly() {
  KeycloakSession s=session();
  EntityManager em=s.getProvider(JpaConnectionProvider.class).getEntityManager();
  doThrow(new IllegalStateException()).when(em).persist(any());
  assertThrows(IllegalStateException.class,()->new AdminScimEventListenerProvider(s,true).onEvent(event(ResourceType.USER,"users/u"),false));
  verify(s.getTransactionManager()).setRollbackOnly();
 }
 @Test void ignoresFailedAdminOperation() {
  KeycloakSession s=mock(KeycloakSession.class); AdminEvent e=event(ResourceType.USER,"users/u"); e.setError("failed");
  new AdminScimEventListenerProvider(s,true).onEvent(e,false); verifyNoInteractions(s);
 }
 static KeycloakSession session() { KeycloakSession s=mock(KeycloakSession.class,RETURNS_DEEP_STUBS); JpaConnectionProvider jpa=mock(JpaConnectionProvider.class); EntityManager em=mock(EntityManager.class); when(jpa.getEntityManager()).thenReturn(em); doReturn(jpa).when(s).getProvider(JpaConnectionProvider.class); return s; }
 static AdminEvent event(ResourceType type,String path) { AdminEvent e=new AdminEvent(); e.setRealmId("r");e.setResourcePath(path);e.setResourceType(type);e.setOperationType(OperationType.UPDATE);return e; }
}

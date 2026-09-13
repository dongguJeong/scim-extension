package com.example.keycloak;
import com.example.keycloak.queue.OutboxEntry;
import org.keycloak.connections.jpa.JpaConnectionProvider;
import org.keycloak.events.*;
import org.keycloak.events.admin.*;
import org.keycloak.models.*;

/** Atomic outbox insert, sharing the user/group transaction. No HTTP in the request. */
public class AdminScimEventListenerProvider implements EventListenerProvider {
    private final KeycloakSession session;
    private final boolean enabled;
    public AdminScimEventListenerProvider(KeycloakSession session, boolean enabled) { this.session=session; this.enabled=enabled; }
    public void onEvent(Event event) { }
    public void onEvent(AdminEvent event, boolean includeRepresentation) {
        if (!enabled || event.getError()!=null) return;
        OperationType op=event.getOperationType();
        if (op!=OperationType.CREATE && op!=OperationType.UPDATE && op!=OperationType.DELETE) return;
        String path=event.getResourcePath();
        if (path==null) return;
        String id,kind;
        if (event.getResourceType()==ResourceType.USER && path.matches("users/[^/]+")) {
            id=path.substring(6); kind="USER";
        } else if (event.getResourceType()==ResourceType.GROUP || event.getResourceType()==ResourceType.GROUP_MEMBERSHIP) {
            id=event.getRealmId(); kind="GROUPS";
        } else return;
        try {
            session.getProvider(JpaConnectionProvider.class).getEntityManager().persist(new OutboxEntry(event.getRealmId(),id,kind));
        } catch (RuntimeException e) {
            session.getTransactionManager().setRollbackOnly();
            throw e;
        }
    }
    public void close() { }
}

package com.example.keycloak.queue;
import com.example.keycloak.*;
import com.example.scim.*;
import jakarta.persistence.*;
import org.keycloak.connections.jpa.JpaConnectionProvider;
import org.keycloak.models.*;
import java.util.*;
import java.util.concurrent.*;

/** DB-persistent FIFO with a shared DB lock. Delivery is at-least-once and idempotent. */
public class OutboxWorker implements AutoCloseable {
    private static final System.Logger LOG=System.getLogger(OutboxWorker.class.getName());
    private final KeycloakSessionFactory factory;
    private final OutboundScimProvider users;
    private final GroupSynchronizer groups;
    private final ScheduledExecutorService executor=Executors.newSingleThreadScheduledExecutor(r->{Thread t=new Thread(r,"scim-outbox");t.setDaemon(true);return t;});
    public OutboxWorker(KeycloakSessionFactory factory,ScimClient client,boolean deactivate) {
        this.factory=factory; users=new OutboundScimProvider(client,deactivate); groups=new GroupSynchronizer(client,users);
    }
    public void start() { executor.scheduleWithFixedDelay(this::tick,3,1,TimeUnit.SECONDS); }
    private void tick() {
        try (KeycloakSession session=factory.create()) {
            session.getTransactionManager().begin();
            try {
                EntityManager em=session.getProvider(JpaConnectionProvider.class).getEntityManager();
                em.find(WorkerLock.class,1,LockModeType.PESSIMISTIC_WRITE);
                List<OutboxEntry> pending=em.createQuery("from ScimOutboxEntry order by id",OutboxEntry.class).setMaxResults(1).getResultList();
                if(!pending.isEmpty()) {
                    OutboxEntry entry=pending.getFirst();
                    if(entry.nextAttempt<=System.currentTimeMillis()) {
                        try {
                            RealmModel realm=session.realms().getRealm(entry.realmId);
                            session.getContext().setRealm(realm);
                            if("USER".equals(entry.kind)) {
                                UserModel user=realm==null ? null : session.users().getUserById(realm,entry.resourceId);
                                users.handleEvent(Map.of("type",user==null ? "DELETE":"UPDATE","user",
                                    user==null ? Map.of("id",entry.resourceId):GroupSynchronizer.snapshot(user)));
                            }
                            groups.sync(session,em,entry.realmId);
                            em.remove(entry);
                        } catch(RuntimeException e) {
                            entry.attempts=Math.min(Integer.MAX_VALUE-1,entry.attempts)+1;
                            entry.nextAttempt=System.currentTimeMillis()+backoff(entry.attempts);
                            entry.lastError=e instanceof ScimException scim ? "SCIM status="+scim.getStatus() : e.getClass().getSimpleName();
                            LOG.log(System.Logger.Level.WARNING,"SCIM outbox id="+entry.id+" attempts="+entry.attempts+" "+entry.lastError);
                        }
                    }
                }
                session.getTransactionManager().commit();
            } catch(RuntimeException e) {
                if(session.getTransactionManager().isActive()) session.getTransactionManager().rollback();
                throw e;
            }
        } catch(RuntimeException e) { LOG.log(System.Logger.Level.ERROR,"SCIM outbox transaction failed: "+e.getClass().getSimpleName()); }
    }
    public static long backoff(int attempts) { return Math.min(300_000L,1000L << Math.min(18,Math.max(0,attempts-1))); }
    public void close() { executor.shutdownNow(); }
}

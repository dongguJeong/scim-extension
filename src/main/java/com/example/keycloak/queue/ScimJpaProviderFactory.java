package com.example.keycloak.queue;
import org.keycloak.Config;
import org.keycloak.models.*;
import org.keycloak.connections.jpa.entityprovider.*;
import java.util.List;
public class ScimJpaProviderFactory implements JpaEntityProviderFactory {
    public JpaEntityProvider create(KeycloakSession session) {
        return new JpaEntityProvider() {
            public List<Class<?>> getEntities() { return List.of(OutboxEntry.class,WorkerLock.class,GroupLink.class); }
            public String getChangelogLocation() { return "META-INF/scim-outbox-changelog.xml"; }
            public String getFactoryId() { return "scim-outbox"; }
            public void close() { }
        };
    }
    public String getId() { return "scim-outbox"; }
    public void init(Config.Scope scope) { }
    public void postInit(KeycloakSessionFactory factory) { }
    public void close() { }
}

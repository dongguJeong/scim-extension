package com.example.keycloak;
import com.example.keycloak.queue.OutboxWorker;
import com.example.scim.ScimClient;
import org.keycloak.Config;
import org.keycloak.events.*;
import org.keycloak.models.*;
import java.net.URI;
public class AdminScimEventListenerProviderFactory implements EventListenerProviderFactory {
    private ScimClient client;
    private boolean deactivate;
    private OutboxWorker worker;
    public EventListenerProvider create(KeycloakSession session) { return new AdminScimEventListenerProvider(session,client!=null); }
    public void init(Config.Scope config) {
        String base=System.getProperty("scim.baseUrl",config.get("base-url"));
        if(base==null || base.isBlank()) return;
        client=new ScimClient(URI.create(base),System.getProperty("scim.bearerToken",config.get("bearer-token")));
        deactivate=Boolean.parseBoolean(System.getProperty("scim.deleteAsDeactivate",config.get("delete-as-deactivate","false")));
    }
    public void postInit(KeycloakSessionFactory factory) {
        if(client!=null) { worker=new OutboxWorker(factory,client,deactivate); worker.start(); }
    }
    public void close() { if(worker!=null) worker.close(); }
    public String getId() { return "scim-admin-listener"; }
}

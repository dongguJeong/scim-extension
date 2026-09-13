package com.example.keycloak;

import com.example.scim.*;
import java.net.URI;
import java.util.*;

/** Idempotent upsert by Keycloak UUID; callers must provide a complete user snapshot. */
public class OutboundScimProvider {
    private final ScimClient client;
    private final boolean deactivate;
    public OutboundScimProvider(URI uri) { this(uri, null); }
    public OutboundScimProvider(URI uri, String token) { this(new ScimClient(uri, token), Boolean.getBoolean("scim.deleteAsDeactivate")); }
    public OutboundScimProvider(ScimClient client, boolean deactivate) { this.client = client; this.deactivate = deactivate; }

    public void handleEvent(Map<String, Object> event) {
        String type = (String) event.get("type");
        if (!Set.of("CREATE", "UPDATE", "DELETE").contains(type)) throw new IllegalArgumentException("Unsupported event type");
        ScimUser user = mapToScimUser((Map<String, Object>) event.get("user"));
        String id = findId(user.getExternalId());
        if ("DELETE".equals(type)) {
            if (id == null) return;
            try {
                if (deactivate) client.patchUser(id, Map.of("schemas", List.of("urn:ietf:params:scim:api:messages:2.0:PatchOp"),
                    "Operations", List.of(Map.of("op", "replace", "path", "active", "value", false))));
                else client.deleteUser(id);
            } catch (ScimException e) { if (e.getStatus() != 404) throw e; }
            return;
        }
        if (user.getUserName() == null || user.getUserName().isBlank()) throw new IllegalArgumentException("Complete user snapshot requires username");
        if (id != null) { client.updateUser(id, user); return; }
        try { client.createUser(user); }
        catch (ScimException e) {
            if (e.getStatus() != 409) throw e;
            id = findId(user.getExternalId());
            if (id == null) throw e;
            client.updateUser(id, user);
        }
    }
    private String findId(String externalId) {
        Map<String,Object> response = client.searchByExternalId(externalId);
        List<?> resources = (List<?>) response.getOrDefault("Resources", List.of());
        if (((Number) response.getOrDefault("totalResults", resources.size())).intValue() > 1 || resources.size() > 1)
            throw new ScimException("Ambiguous externalId mapping");
        if (resources.isEmpty()) return null;
        Object id = ((Map<?,?>) resources.get(0)).get("id");
        if (id == null) throw new ScimException("SCIM search result has no id");
        return id.toString();
    }
    static ScimUser mapToScimUser(Map<String,Object> m) {
        ScimUser u = new ScimUser();
        String id = text(m, "id");
        if (id == null) id = text(m, "externalId");
        if (id == null || id.isBlank()) throw new IllegalArgumentException("Keycloak user id is required");
        u.setExternalId(id);
        u.setUserName(text(m, "username"));
        u.setActive((Boolean) m.getOrDefault("enabled", true));
        Map<String,Object> attrs = new HashMap<>();
        if (m.get("attributes") instanceof Map<?,?> a) a.forEach((k,v) -> attrs.put(k.toString(), v));
        for (String key : List.of("displayName","phoneNumber","password","otpid","telegram_id","company","ip","notExpire","expireDate","mac"))
            if (m.get(key) != null) attrs.put(key,m.get(key));
        String display = text(attrs,"displayName");
        if (display == null) display = (Objects.toString(m.get("firstName"), "") + " " + Objects.toString(m.get("lastName"), "")).trim();
        u.setDisplayName(display.isBlank() ? u.getUserName() : display);
        String email = text(m,"email");
        if (email != null) { ScimUser.Email e = new ScimUser.Email(); e.value = email; e.primary = true; u.setEmails(List.of(e)); }
        else u.setEmails(List.of());
        String phone = text(attrs,"phoneNumber");
        if (phone != null) { ScimUser.Phone p = new ScimUser.Phone(); p.value = phone; u.setPhoneNumbers(List.of(p)); }
        else u.setPhoneNumbers(List.of());
        u.setPassword(text(attrs,"password"));
        Map<String,Object> ext = new HashMap<>();
        if (m.get("rbac") instanceof Map<?,?> a) a.forEach((k,v) -> ext.put(k.toString(),v));
        for (String key : List.of("otpid","telegram_id","company","expireDate","mac")) {
            String value = text(attrs,key); if (value != null) ext.put(key,value);
        }
        String notExpire = text(attrs,"notExpire");
        if (notExpire != null) ext.put("notExpire", Boolean.parseBoolean(notExpire));
        if (attrs.get("ip") != null) {
            Object value = attrs.get("ip");
            List<?> values = value instanceof List<?> list ? list : List.of(value);
            ext.put("ip", values.stream().map(v -> v instanceof Map ? v : Map.of("value", v.toString())).toList());
        }
        String core = "urn:ietf:params:scim:schemas:core:2.0:User", rbac = "urn:ietf:params:scim:schemas:extension:rbac:2.0:User";
        u.setSchemas(ext.isEmpty() ? List.of(core) : List.of(core, rbac));
        if (!ext.isEmpty()) u.setRbacExtension(ext);
        return u;
    }
    private static String text(Map<String,Object> map, String key) {
        Object value = map.get(key);
        if (value instanceof List<?> list) value = list.isEmpty() ? null : list.get(0);
        return value == null ? null : value.toString();
    }
}

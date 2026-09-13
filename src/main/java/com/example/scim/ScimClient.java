package com.example.scim;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.IOException;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.time.Duration;
import java.util.Map;

public class ScimClient {
    private final HttpClient http;
    private final URI baseUri;
    private final ObjectMapper mapper = new ObjectMapper();
    private final String bearerToken;

    public ScimClient(URI baseUri) {
        this(baseUri, null);
    }

    public ScimClient(URI baseUri, String bearerToken) {
        if (!java.util.Set.of("http", "https").contains(baseUri.getScheme()) || baseUri.getHost() == null
                || baseUri.getQuery() != null || baseUri.getFragment() != null || baseUri.getUserInfo() != null)
            throw new IllegalArgumentException("SCIM base URL must be an HTTP(S) URL without credentials, query or fragment");
        this.baseUri = URI.create(baseUri.toString().replaceAll("/+$", "") + "/");
        this.http = HttpClient.newBuilder()
                .connectTimeout(Duration.ofSeconds(10))
                .build();
        this.bearerToken = bearerToken;
    }

    public ScimUser createUser(ScimUser user) {
        try {
            String body = mapper.writeValueAsString(user);
                HttpRequest.Builder b = HttpRequest.newBuilder().timeout(Duration.ofSeconds(15))
                    .uri(baseUri.resolve("Users"))
                    .header("Content-Type", "application/scim+json")
                    .POST(HttpRequest.BodyPublishers.ofString(body));
                if (bearerToken != null && !bearerToken.isEmpty()) b.header("Authorization", "Bearer " + bearerToken);
                HttpRequest req = b.build();

            HttpResponse<String> resp = http.send(req, HttpResponse.BodyHandlers.ofString());
            if (resp.statusCode() >= 200 && resp.statusCode() < 300) {
                return mapper.readValue(resp.body(), ScimUser.class);
            }
            throw new ScimException("SCIM create failed", resp.statusCode());
        } catch (JsonProcessingException e) {
            throw new ScimException("JSON error", e);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw new ScimException("HTTP interrupted", e);
        } catch (IOException e) {
            throw new ScimException("HTTP error", e);
        }
    }

    public ScimUser updateUser(String id, ScimUser user) {
        try {
            String body = mapper.writeValueAsString(user);
                HttpRequest.Builder b = HttpRequest.newBuilder().timeout(Duration.ofSeconds(15))
                    .uri(baseUri.resolve("Users/" + java.net.URLEncoder.encode(id, java.nio.charset.StandardCharsets.UTF_8).replace("+", "%20")))
                    .header("Content-Type", "application/scim+json")
                    .PUT(HttpRequest.BodyPublishers.ofString(body));
                if (bearerToken != null && !bearerToken.isEmpty()) b.header("Authorization", "Bearer " + bearerToken);
                HttpRequest req = b.build();

            HttpResponse<String> resp = http.send(req, HttpResponse.BodyHandlers.ofString());
            if (resp.statusCode() >= 200 && resp.statusCode() < 300) {
                // Some servers return 204 with empty body
                if (resp.body() == null || resp.body().isBlank()) return user;
                return mapper.readValue(resp.body(), ScimUser.class);
            }
            throw new ScimException("SCIM update failed", resp.statusCode());
        } catch (JsonProcessingException e) {
            throw new ScimException("JSON error", e);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw new ScimException("HTTP interrupted", e);
        } catch (IOException e) {
            throw new ScimException("HTTP error", e);
        }
    }

    public void deleteUser(String id) {
        try {
                HttpRequest.Builder b = HttpRequest.newBuilder().timeout(Duration.ofSeconds(15))
                    .uri(baseUri.resolve("Users/" + java.net.URLEncoder.encode(id, java.nio.charset.StandardCharsets.UTF_8).replace("+", "%20")))
                    .DELETE();
                if (bearerToken != null && !bearerToken.isEmpty()) b.header("Authorization", "Bearer " + bearerToken);
                HttpRequest req = b.build();

            HttpResponse<Void> resp = http.send(req, HttpResponse.BodyHandlers.discarding());
            if (resp.statusCode() < 200 || resp.statusCode() >= 300) {
                throw new ScimException("SCIM delete failed", resp.statusCode());
            }
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw new ScimException("HTTP interrupted", e);
        } catch (IOException e) {
            throw new ScimException("HTTP error", e);
        }
    }

    public void patchUser(String id, Map<String, Object> patchBody) {
        try {
            String body = mapper.writeValueAsString(patchBody);
            HttpRequest.Builder b = HttpRequest.newBuilder().timeout(Duration.ofSeconds(15))
                    .uri(baseUri.resolve("Users/" + java.net.URLEncoder.encode(id, java.nio.charset.StandardCharsets.UTF_8).replace("+", "%20")))
                    .header("Content-Type", "application/scim+json")
                    .method("PATCH", HttpRequest.BodyPublishers.ofString(body));
            if (bearerToken != null && !bearerToken.isEmpty()) b.header("Authorization", "Bearer " + bearerToken);
            HttpRequest req = b.build();

            HttpResponse<String> resp = http.send(req, HttpResponse.BodyHandlers.ofString());
            if (resp.statusCode() < 200 || resp.statusCode() >= 300) {
                throw new ScimException("SCIM patch failed", resp.statusCode());
            }
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw new ScimException("HTTP interrupted", e);
        } catch (IOException e) {
            throw new ScimException("HTTP error", e);
        }
    }

    public Map<String, Object> searchByExternalId(String externalId) {
        try {
            String filter = "externalId eq \"" + externalId.replace("\\", "\\\\").replace("\"","\\\"") + "\"";
            String uri = "Users?filter=" + java.net.URLEncoder.encode(filter, java.nio.charset.StandardCharsets.UTF_8);
            HttpRequest.Builder b = HttpRequest.newBuilder().timeout(Duration.ofSeconds(15))
                    .uri(baseUri.resolve(uri))
                    .header("Accept", "application/scim+json")
                    .GET();
            if (bearerToken != null && !bearerToken.isEmpty()) b.header("Authorization", "Bearer " + bearerToken);
            HttpRequest req = b.build();

            HttpResponse<String> resp = http.send(req, HttpResponse.BodyHandlers.ofString());
            if (resp.statusCode() >= 200 && resp.statusCode() < 300) {
                return mapper.readValue(resp.body(), Map.class);
            }
            throw new ScimException("SCIM search failed", resp.statusCode());
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw new ScimException("HTTP interrupted", e);
        } catch (IOException e) {
            throw new ScimException("HTTP error", e);
        }
    }

    public Map<String, Object> searchUsers(String filter) {
        try {
            String uri = "Users?filter=" + java.net.URLEncoder.encode(filter, java.nio.charset.StandardCharsets.UTF_8);
                HttpRequest.Builder b = HttpRequest.newBuilder().timeout(Duration.ofSeconds(15))
                    .uri(baseUri.resolve(uri))
                    .header("Accept", "application/scim+json")
                    .GET();
                if (bearerToken != null && !bearerToken.isEmpty()) b.header("Authorization", "Bearer " + bearerToken);
                HttpRequest req = b.build();

            HttpResponse<String> resp = http.send(req, HttpResponse.BodyHandlers.ofString());
            if (resp.statusCode() >= 200 && resp.statusCode() < 300) {
                return mapper.readValue(resp.body(), Map.class);
            }
            throw new ScimException("SCIM search failed", resp.statusCode());
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw new ScimException("HTTP interrupted", e);
        } catch (IOException e) {
            throw new ScimException("HTTP error", e);
        }
    }

    /** Generic SCIM resource request used by group reconciliation. */
    public Map<String,Object> resource(String method, String path, Object body) {
        try {
            HttpRequest.Builder b=HttpRequest.newBuilder(baseUri.resolve(path)).timeout(Duration.ofSeconds(15))
                .header("Accept","application/scim+json").header("Content-Type","application/scim+json");
            if (bearerToken!=null && !bearerToken.isBlank()) b.header("Authorization","Bearer "+bearerToken);
            b.method(method,body==null ? HttpRequest.BodyPublishers.noBody() : HttpRequest.BodyPublishers.ofString(mapper.writeValueAsString(body)));
            HttpResponse<String> r=http.send(b.build(),HttpResponse.BodyHandlers.ofString());
            if (r.statusCode()<200 || r.statusCode()>=300) throw new ScimException("SCIM "+method+" failed",r.statusCode());
            return r.body().isBlank() ? Map.of() : mapper.readValue(r.body(),Map.class);
        } catch (InterruptedException e) { Thread.currentThread().interrupt(); throw new ScimException("HTTP interrupted",e); }
        catch (IOException e) { throw new ScimException("HTTP/JSON error",e); }
    }
    public static String segment(String value) {
        return java.net.URLEncoder.encode(value, java.nio.charset.StandardCharsets.UTF_8).replace("+","%20");
    }
    public String findResourceId(String type,String externalId) {
        String filter="externalId eq "+mapper.valueToTree(externalId).toString();
        Map<String,Object> result=resource("GET",type+"?filter="+segment(filter),null);
        java.util.List<?> resources=(java.util.List<?>) result.getOrDefault("Resources",java.util.List.of());
        if (((Number)result.getOrDefault("totalResults",resources.size())).intValue()>1 || resources.size()>1)
            throw new ScimException("Ambiguous externalId");
        if (resources.isEmpty()) return null;
        Object id=((Map<?,?>)resources.getFirst()).get("id");
        if (id==null) throw new ScimException("Missing resource id");
        return id.toString();
    }
}

package com.example.scim;

import com.github.tomakehurst.wiremock.WireMockServer;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.net.URI;
import java.util.Collections;

import static com.github.tomakehurst.wiremock.client.WireMock.*;
import static org.junit.jupiter.api.Assertions.*;

public class ScimClientTest {
    private WireMockServer wm;

    @BeforeEach
    public void start() {
        wm = new WireMockServer(0);
        wm.start();
        configureFor("localhost", wm.port());
    }

    @AfterEach
    public void stop() {
        if (wm != null) wm.stop();
    }

    @Test
    public void createUserSuccess() {
        stubFor(post(urlEqualTo("/scim/v2/Users"))
                .willReturn(aResponse().withStatus(201).withHeader("Content-Type","application/scim+json")
                        .withBody("{\"id\":\"u1\",\"userName\":\"alice\",\"meta\":{\"resourceType\":\"User\"}}")));

        ScimClient client = new ScimClient(URI.create("http://localhost:" + wm.port() + "/scim/v2"));
        ScimUser in = new ScimUser();
        in.setUserName("alice");
        ScimUser out = client.createUser(in);
        assertNotNull(out);
        assertEquals("u1", out.getId());
        assertEquals("alice", out.getUserName());
    }

    @Test
    public void deleteUserNotFoundThrows() {
        stubFor(delete(urlEqualTo("/scim/v2/Users/u2"))
                .willReturn(aResponse().withStatus(404)));

        ScimClient client = new ScimClient(URI.create("http://localhost:" + wm.port() + "/scim/v2"));
        assertThrows(ScimException.class, () -> client.deleteUser("u2"));
    }
}

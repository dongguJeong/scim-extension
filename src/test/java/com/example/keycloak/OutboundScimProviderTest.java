package com.example.keycloak;
import com.example.scim.*;
import org.junit.jupiter.api.Test;
import java.util.*;
import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;
class OutboundScimProviderTest {
    @Test void mapsUuidAndCompleteProfile() {
        ScimUser u = OutboundScimProvider.mapToScimUser(Map.of("id","kc1", "username","alice", "firstName","Alice", "lastName","Kim", "enabled",false,
            "attributes",Map.of("company",List.of("Acme"),"ip",List.of("10.0.0.1"),"notExpire",List.of("true"))));
        assertNull(u.getId()); assertEquals("kc1",u.getExternalId()); assertFalse(u.getActive());
        assertEquals("Alice Kim",u.getDisplayName()); assertEquals("Acme",u.getRbacExtension().get("company"));
        assertEquals(true,u.getRbacExtension().get("notExpire")); assertEquals(List.of(Map.of("value","10.0.0.1")),u.getRbacExtension().get("ip"));
    }
    @Test void rapidCreateUpdateDeleteAreAllDelivered() {
        ScimClient client = mock(ScimClient.class);
        when(client.searchByExternalId("kc1")).thenReturn(Map.of("Resources",List.of()),Map.of("Resources",List.of(Map.of("id","s1"))));
        OutboundScimProvider adapter = new OutboundScimProvider(client,false);
        Map<String,Object> user = Map.of("id","kc1","username","alice");
        for(String type:List.of("CREATE","UPDATE","DELETE")) adapter.handleEvent(Map.of("type",type,"user",user));
        verify(client).createUser(any()); verify(client).updateUser(eq("s1"),any()); verify(client).deleteUser("s1");
    }
    @Test void unresolvedConflictIsNotSwallowed() {
        ScimClient client = mock(ScimClient.class);
        when(client.searchByExternalId("kc1")).thenReturn(Map.of("Resources",List.of()));
        when(client.createUser(any())).thenThrow(new ScimException("conflict",409));
        assertThrows(ScimException.class,()->new OutboundScimProvider(client,false).handleEvent(Map.of("type","CREATE","user",Map.of("id","kc1","username","alice"))));
    }
    @Test void duplicateExternalIdsFailClosed() {
        ScimClient client = mock(ScimClient.class);
        when(client.searchByExternalId("kc1")).thenReturn(Map.of("totalResults",2,"Resources",List.of(Map.of("id","s1"),Map.of("id","s2"))));
        assertThrows(ScimException.class,()->new OutboundScimProvider(client,false).handleEvent(Map.of("type","DELETE","user",Map.of("id","kc1"))));
        verify(client,never()).deleteUser(any());
    }
    @Test void deleteCanDeactivate() {
        ScimClient client = mock(ScimClient.class);
        when(client.searchByExternalId("kc1")).thenReturn(Map.of("Resources",List.of(Map.of("id","s1"))));
        new OutboundScimProvider(client,true).handleEvent(Map.of("type","DELETE","user",Map.of("id","kc1")));
        verify(client).patchUser(eq("s1"),argThat(p->p.get("Operations").equals(List.of(Map.of("op","replace","path","active","value",false)))));
    }
}

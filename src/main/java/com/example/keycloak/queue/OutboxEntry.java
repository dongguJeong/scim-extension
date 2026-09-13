package com.example.keycloak.queue;
import jakarta.persistence.*;
@Entity(name="ScimOutboxEntry") @Table(name="SCIM_OUTBOX")
public class OutboxEntry {
    @Id @GeneratedValue(strategy=GenerationType.IDENTITY) @Column(name="ID") public Long id;
    @Column(name="REALM_ID",nullable=false) public String realmId;
    @Column(name="RESOURCE_ID",nullable=false) public String resourceId;
    @Column(name="KIND",nullable=false) public String kind;
    @Column(name="ATTEMPTS",nullable=false) public int attempts;
    @Column(name="NEXT_ATTEMPT",nullable=false) public long nextAttempt;
    @Column(name="CREATED_AT",nullable=false) public long createdAt;
    @Column(name="LAST_ERROR") public String lastError;
    public OutboxEntry() { }
    public OutboxEntry(String realm, String resource, String kind) {
        realmId=realm; resourceId=resource; this.kind=kind; createdAt=System.currentTimeMillis();
    }
}

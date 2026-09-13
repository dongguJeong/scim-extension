package com.example.keycloak.queue;
import jakarta.persistence.*;
@Entity(name="ScimGroupLink") @Table(name="SCIM_GROUP_LINK")
public class GroupLink {
    @Id @Column(name="ID") public String id;
    @Column(name="REALM_ID",nullable=false) public String realmId;
    @Column(name="SCIM_ID",nullable=false) public String scimId;
}

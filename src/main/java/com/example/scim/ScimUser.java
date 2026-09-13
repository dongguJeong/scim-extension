package com.example.scim;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;

import java.util.List;
import java.util.Map;

@com.fasterxml.jackson.annotation.JsonIgnoreProperties(ignoreUnknown = true)
@JsonInclude(JsonInclude.Include.NON_NULL)
public class ScimUser {
    private String id;
    private String externalId;
    private List<String> schemas;
    private String userName;
    private String displayName;
    private Boolean active;
    private String password;

    @JsonProperty("emails")
    private List<Email> emails;

    @JsonProperty("phoneNumbers")
    private List<Phone> phoneNumbers;

    @JsonProperty("urn:ietf:params:scim:schemas:extension:rbac:2.0:User")
    private Map<String, Object> rbacExtension;

    public static class Email {
        public String value;
        public String type;
        public boolean primary;
    }

    public static class Phone {
        public String value;
        public String type;
    }

    public ScimUser() {}

    public String getId() { return id; }
    public void setId(String id) { this.id = id; }

    public String getExternalId() { return externalId; }
    public void setExternalId(String externalId) { this.externalId = externalId; }

    public List<String> getSchemas() { return schemas; }
    public void setSchemas(List<String> schemas) { this.schemas = schemas; }

    public String getUserName() { return userName; }
    public void setUserName(String userName) { this.userName = userName; }

    public String getDisplayName() { return displayName; }
    public void setDisplayName(String displayName) { this.displayName = displayName; }

    public Boolean getActive() { return active; }
    public void setActive(Boolean active) { this.active = active; }

    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }

    public List<Email> getEmails() { return emails; }
    public void setEmails(List<Email> emails) { this.emails = emails; }

    public List<Phone> getPhoneNumbers() { return phoneNumbers; }
    public void setPhoneNumbers(List<Phone> phoneNumbers) { this.phoneNumbers = phoneNumbers; }

    public Map<String, Object> getRbacExtension() { return rbacExtension; }
    public void setRbacExtension(Map<String, Object> rbacExtension) { this.rbacExtension = rbacExtension; }
}

package com.example.scim;
public class ScimException extends RuntimeException {
    private final int status;
    public ScimException(String message) { super(message); status = 0; }
    public ScimException(String message, Throwable cause) { super(message, cause); status = 0; }
    public ScimException(String message, int status) { super(message + ": " + status); this.status = status; }
    public int getStatus() { return status; }
    public boolean isRetryable() { return status == 429 || status >= 500 || getCause() instanceof java.io.IOException; }
}

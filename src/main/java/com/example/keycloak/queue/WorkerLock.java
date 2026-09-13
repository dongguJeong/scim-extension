package com.example.keycloak.queue;
import jakarta.persistence.*;
@Entity(name="ScimWorkerLock") @Table(name="SCIM_WORKER_LOCK")
public class WorkerLock { @Id @Column(name="ID") public int id; }

# ADR-003

## Title

DataSource–Connection Relationship

## Status

Accepted

## Context

A business data source may expose its data through multiple physical access points.

For example, the same Meteorological DataSource may have:

- Production SQL Server
- Test SQL Server
- Backup SQL Server
- REST API
- Future Cloud Database

All these access points belong to one business source.

The EDIP system must support multiple physical connections without changing the business model.

---

## Decision

A separate entity named **Connection** is introduced.

Relationship:

DataSource (1) -------- (N) Connection

Each Connection belongs to exactly one DataSource.

Each DataSource may have one or more Connections.

---

## Design Decisions

### DD-001 Separate Connection Entity

**Decision**

Connection is implemented as an independent entity.

**Reason**

Business information and technical connection information have different responsibilities.

---

### DD-002 One-to-Many Relationship

**Decision**

One DataSource may contain multiple Connections.

**Reason**

Different environments require different physical connections.

Examples:

- Production
- Test
- Development
- Backup

---

### DD-003 One Owner Per Connection

**Decision**

Each Connection belongs to exactly one DataSource.

**Reason**

A physical connection should never belong to multiple business sources.

This prevents ambiguity and simplifies maintenance.

---

### DD-004 Credentials Separation

**Decision**

Passwords, API Keys and other secrets are NOT stored inside the Connection entity.

Only a Credential reference will be stored.

**Reason**

Improves security and allows centralized credential management.

---

### DD-005 Environment Support

**Decision**

Each Connection stores its execution environment.

Examples:

- Production
- Test
- Development
- Disaster Recovery

**Reason**

The same DataSource may be accessed differently depending on the execution environment.

---

## Consequences

### Advantages

- Supports multiple environments.
- Easier maintenance.
- Better security.
- Scalable architecture.
- Clear separation between business and infrastructure.

### Disadvantages

- One additional table.
- One additional foreign key relationship.
- Slightly more complex queries when joining business and connection information.

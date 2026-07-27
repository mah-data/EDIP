# ADR-004

## Title

Connection Architecture

## Status

Accepted

## Context

A Connection represents the physical mechanism used by EDIP to access data from a DataSource.

A DataSource may expose its data through different technologies, including:

- SQL Server
- Oracle
- PostgreSQL
- REST API
- FTP
- CSV Files
- Cloud Storage

Each physical access method requires its own configuration while remaining linked to the same DataSource.

---

## Decision

Connection represents a physical access point to a DataSource.

Each Connection contains only technical connection information.

Business information is stored in DataSource.

Relationship:

DataSource (1) -------- (N) Connection

---

## Design Decisions

### DD-001 Technical Responsibility

**Decision**

Connection stores only technical connection information.

**Reason**

Business information and infrastructure information must remain independent.

---

### DD-002 Connection Type

**Decision**

ConnectionType is stored as **NVARCHAR(50)**.

Examples:

- SQLServer
- Oracle
- PostgreSQL
- REST_API
- FTP
- CSV

**Reason**

The number of connection types is limited in Version 1.0.

A Lookup Table is unnecessary at this stage.

---

### DD-003 Authentication

**Decision**

Authentication information is separated from Connection.

Connection stores only a reference to credentials.

**Reason**

Passwords and security information must not be duplicated.

This improves security and simplifies credential management.

---

### DD-004 Environment

**Decision**

Each Connection belongs to one execution environment.

Examples:

- Development
- Test
- Production
- Disaster Recovery

**Reason**

The same DataSource may require different connection settings in different environments.

---

### DD-005 Connection Status

**Decision**

Each Connection has an operational status.

Examples:

- Active
- Disabled
- Maintenance
- Failed

**Reason**

Connections may temporarily become unavailable while the DataSource remains active.

---

## Consequences

### Advantages

- Clear separation between business and infrastructure.
- Supports multiple database technologies.
- Easier migration.
- Better security.
- Supports multiple execution environments.

### Disadvantages

- Additional configuration is required.
- More relationships between entities.

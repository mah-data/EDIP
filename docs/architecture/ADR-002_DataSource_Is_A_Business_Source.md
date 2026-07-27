# ADR-002

## Title

DataSource Represents a Business Data Source

## Status

Accepted

## Context

The EDIP system integrates data from multiple business systems.

A business data source may change its physical implementation over time.

Examples:

- SQL Server
- Oracle
- PostgreSQL
- REST API
- CSV Files
- Sensor Network

Although the storage technology may change, the business source remains the same.

For example:

The Meteorological Organization is still the same business source whether its data is stored in SQL Server today or PostgreSQL tomorrow.

---

## Decision

DataSource represents a **logical business source**, not a physical database.

A DataSource identifies the owner and business origin of the data.

All physical access information is managed through the Connection entity.

Relationship:

DataSource (1) -------- (N) Connection

---

## Design Decisions

### DD-001 Business Independence

**Decision**

DataSource is independent of database technology.

**Reason**

Changing database technology must not require changing the business model.

---

### DD-002 Physical Access Separation

**Decision**

Connection information is separated from DataSource.

**Reason**

Business information and technical connection information have different responsibilities.

---

### DD-003 Multiple Connections

**Decision**

One DataSource may contain multiple Connections.

**Reason**

The same business source may provide:

- Production Database
- Test Database
- Backup Database
- REST API

All belong to the same business source.

---

### DD-004 Business Ownership

**Decision**

Owner information belongs to DataSource.

**Reason**

Ownership is a business characteristic, not a technical connection property.

---

### DD-005 Operational Status

**Decision**

Operational status is stored in DataSource.

Examples:

- Active
- Inactive
- Archived
- Maintenance

**Reason**

The business source itself may become inactive while its historical information remains available.

---

## Consequences

### Advantages

- Independent from database technology.
- Easier migration.
- Better scalability.
- Clear separation between business and technical layers.
- Supports multiple physical connections.

### Disadvantages

- Requires an additional Connection entity.
- Adds one extra relationship to the data model.

# Connection

## Purpose

Represents a physical connection to a DataSource.

A Connection contains the technical information required to access a data source.

A Connection is independent from the logical business definition of the DataSource.

---

## Table Information

| Property | Value |
|---|---|
| Table Name | dbo.Connection |
| Primary Key | ConnectionID |
| Version | 1.0 |

---

## Attributes

| Column | Description |
|---|---|
| ConnectionID | Unique identifier of the connection |
| DataSourceID | Reference to the related DataSource |
| ConnectionName | Logical name of the connection |
| ConnectionType | Type of connection such as SQL Server, API, or File System |
| ServerName | Server or endpoint address |
| DatabaseName | Target database name when applicable |
| Port | Network port used by the connection |
| AuthenticationType | Authentication mechanism used for access |
| CredentialID | Reference to external credential management |
| Environment | Target environment such as Development or Production |
| TimeoutSeconds | Connection timeout value in seconds |
| Status | Operational status of the connection |
| Description | Additional information about the connection |
| CreatedDate | Record creation timestamp |
| CreatedBy | User or process that created the record |

---

## Business Rules

- Every Connection belongs to exactly one DataSource.
- A DataSource can have multiple Connections.
- Credential information must not be stored directly in the Connection table.
- Connection represents a physical access point to a data source.
- TimeoutSeconds uses a default value defined by the database schema.

---

## Relationships

DataSource (1) ---- (N) Connection

---

## Related ADRs

- ADR-003 DataSource Connection Relationship
- ADR-004 Connection Architecture

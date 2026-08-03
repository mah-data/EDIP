# DataSource

## Purpose

Represents a logical business data source independent of storage technology.

A DataSource identifies the business origin and ownership of data.

A DataSource is a logical concept and does not represent a physical database or connection.

---

## Table Information

| Property | Value |
|---|---|
| Table Name | dbo.DataSource |
| Primary Key | DataSourceID |
| Version | 1.0 |

---

## Attributes

| Column | Description |
|---|---|
| DataSourceID | Unique identifier of the data source |
| SourceName | Logical name of the data source |
| SourceType | Type of data source such as Database, API, or File |
| Owner | Business owner responsible for the data source |
| Status | Operational status of the data source |
| Description | Additional information about the data source |
| CreatedDate | Record creation timestamp |
| CreatedBy | User or process that created the record |

---

## Business Rules

- A DataSource represents a business data source, not a physical database.
- One DataSource can have multiple Connections.
- Physical changes such as server name, database name, or technology do not change the DataSource identity.

---

## Relationships

DataSource (1) ---- (N) Connection

---

## Related ADRs

- ADR-002 DataSource Is A Business Source
- ADR-003 DataSource Connection Relationship
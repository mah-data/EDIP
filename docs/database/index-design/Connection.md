# Connection Index Design

## Primary Key

PK_Connection

(Clustered Index)

---

## Nonclustered Indexes

### IX_Connection_DataSourceID

Purpose

Retrieve all connections belonging to a DataSource.

Example

SELECT *
FROM dbo.Connection
WHERE DataSourceID = 1;

Reason

This is expected to be one of the most frequent queries.

---

### IX_Connection_ConnectionName

Purpose

Search a connection by name.

Example

SELECT *
FROM dbo.Connection
WHERE ConnectionName='Main Oracle';

Reason

Connection names are frequently used by administrators.

---

## No Index

No additional indexes are required for:

- ConnectionType
- IsActive

Reason

Low selectivity and low search frequency.

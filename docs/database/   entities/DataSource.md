# DataSource

## Purpose

Represents a logical source of data.
Represents a logical business data source independent of storage technology.

## Attributes
- DataSourceID
- Name
- Type
- Owner
- Status
- Description
- CreatedDate
- CreatedBy

## Business Rules
- A DataSource represents a business source, not a database.
- Every DataSource can have one or more Connections.
- Changing the database engine or database name does not change the DataSource.
## Relationships

DataSource (1) ---- (N) Connection

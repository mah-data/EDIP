# Connection

## Purpose

Represents a physical connection to a data source.

## Attributes

- ConnectionID
- DataSourceID
- ConnectionName
- ConnectionType
- ServerName
- DatabaseName
- Port
- AuthenticationType
- CredentialID
- Environment
- Timeout
- Status
- Description
- CreatedDate
- CreatedBy

## Business Rules

- Every Connection belongs to exactly one DataSource.
- A DataSource can have one or many Connections.
- Credential information must not be stored directly in Connection.
- One Connection points to one physical endpoint.

## Relationships

DataSource (1) ---- (N) Connection

Credential (1) ---- (N) Connection

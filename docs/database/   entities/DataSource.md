# DataSource

## Purpose

Represents a logical source of data.

## Attributes

- SourceID
- SourceName
- SourceType
- Version
- Description
- IsActive
- CreatedDate
- CreatedBy

## Business Rules

- Every DataSource must have at least one Connection.
- Version belongs to DataSource.

## Relationships

DataSource (1) ---- (N) Connection

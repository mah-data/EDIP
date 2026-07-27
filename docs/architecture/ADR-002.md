# ADR-002

## Title

DataSource Represents a Business Data Source

## Status

Accepted

## Context

The business source of data should remain constant even if the underlying database technology, server, or storage platform changes.

For example:

- SQL Server
- PostgreSQL
- Oracle
- REST API

may all represent the same business source.

## Decision

DataSource represents a logical business source.

It does NOT represent a physical database.

Physical connectivity is handled by the Connection entity.

## Consequences

Advantages

- Independent from database technology
- Easier migration
- Stable business model
- Supports multiple technologies

Disadvantages

- Requires an additional Connection entity

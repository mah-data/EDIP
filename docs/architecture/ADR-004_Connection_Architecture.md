# ADR-004

## Title

Connection Architecture

## Status

Accepted

## Context

A business DataSource may be accessed through different physical connections.

Examples:

- Production SQL Server
- Test SQL Server
- REST API
- Archive Database

The business source remains the same while the physical connection changes.

## Decision

Connection is modeled as a separate entity.

Each Connection belongs to exactly one DataSource.

A DataSource may contain one or many Connections.

Credentials are NOT stored inside Connection.

Only CredentialID is stored.

## Consequences

Advantages

- Better security
- Easier maintenance
- Supports multiple environments
- Supports future cloud migration

Disadvantages

- One additional table
- One additional join

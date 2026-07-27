# ADR-003

## Title

One DataSource Can Have Multiple Connections

## Status

Accepted

## Context

A single business data source may be accessed through multiple physical connections.

Examples:

Weather System

Production SQL Server

Reporting Database

REST API

Backup Database

These are different physical connections but belong to the same business source.

## Decision

One DataSource may contain one or many Connections.

Relationship:

DataSource (1) ---- (N) Connection

Each Connection belongs to exactly one DataSource.

## Consequences

Advantages

- Supports Production/Test environments
- Supports Backup servers
- Supports multiple access methods
- Better scalability

Disadvantages

- One additional relationship
- Slightly more complex data model

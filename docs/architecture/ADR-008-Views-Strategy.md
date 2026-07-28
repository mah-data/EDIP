# ADR-008: View Strategy

## Status

Accepted

## Context

Views are required to simplify data access, improve readability, and provide a stable interface for reporting and business logic without exposing physical table structures.

## Decision

The project will use SQL Views to:

- Hide physical table complexity.
- Simplify joins between metadata tables.
- Provide reusable datasets for reports.
- Reduce duplicated SQL code.
- Support future API development.

Views will not contain business logic.

Views will only expose validated metadata.

## Consequences

Advantages

- Simpler queries
- Better maintainability
- Reusable datasets
- Reduced code duplication

Disadvantages

- Additional database objects
- Need for version control

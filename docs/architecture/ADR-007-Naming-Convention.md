# ADR-007: Naming Convention

## Status

Accepted

## Context

A consistent naming convention is required to keep the metadata repository readable, maintainable and extensible.

## Decision

The following naming convention will be used throughout the project.

### Sample Data

| Entity | Format | Example |
|--------|--------|---------|
| DataSource | SRC### | SRC001 |
| Connection | CON### | CON001 |
| Dataset | DST### | DST001 |
| Rule | RUL### | RUL001 |

### SQL Objects

| Object | Prefix |
|--------|--------|
| Table | tbl |
| View | vw |
| Stored Procedure | usp |
| Function | fn |
| Trigger | trg |

### Constraints

| Object | Prefix |
|--------|--------|
| Primary Key | PK |
| Foreign Key | FK |
| Default | DF |
| Check | CK |
| Index | IX |

## Consequences

- Consistent object names
- Easier maintenance
- Easier automation
- Better readability

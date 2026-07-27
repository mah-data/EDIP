# ADR-001

## Title

Project Repository Structure

## Status

Accepted

## Context

The EDIP project requires a clear, maintainable, and scalable repository structure.

The repository must support:

- Documentation
- Database Design
- SQL Scripts
- Python Development
- Testing
- Sample Data
- Future Expansion

A consistent structure is required to simplify project maintenance and collaboration.

---

## Decision

The following repository structure is adopted as the standard for the EDIP project.

```
EDIP/
│
├── docs/
│   ├── architecture/
│   ├── database/
│   │   └── entities/
│   ├── diagrams/
│   └── requirements/
│
├── sql/
├── python/
├── tests/
├── sample-data/
├── scripts/
│
└── README.md
```

This structure will remain unchanged unless a major architectural change is approved.

---

## Design Decisions

### DD-001 Documentation Separation

**Decision**

Documentation is separated from implementation.

**Reason**

Business documentation, architecture documents and source code have different purposes and should evolve independently.

---

### DD-002 SQL Separation

**Decision**

All SQL scripts are stored inside the **sql** folder.

**Reason**

Database objects should be version-controlled independently from application code.

---

### DD-003 Python Separation

**Decision**

Python source code is stored inside the **python** folder.

**Reason**

Application logic should remain independent from database scripts and documentation.

---

### DD-004 Architecture Documents

**Decision**

Architecture Decision Records (ADR) are stored under:

```
docs/architecture
```

**Reason**

Architectural decisions must be documented separately from entity definitions.

---

### DD-005 Entity Documentation

**Decision**

Each Entity has one documentation file inside:

```
docs/database/entities
```

**Reason**

Each business entity should have a single authoritative definition.

---

## Consequences

### Advantages

- Clean project organization.
- Easier maintenance.
- Easier onboarding of new developers.
- Supports future expansion.
- Suitable for Git version control.

### Disadvantages

- More folders at the beginning of the project.
- Requires discipline to keep files in their correct locations.

# ADR-005

## Title

Dataset Architecture

## Status

Accepted

## Context

The EDIP system must collect data from different physical technologies.

Examples:

- SQL Tables
- SQL Views
- CSV Files
- Excel Files
- REST APIs
- XML
- JSON
- Sensor Streams

Regardless of how the data is physically stored, EDIP should work with a unified logical object.

Users should work with logical datasets instead of physical database objects.

---

## Decision

Dataset represents a **logical collection of related data**.

A Dataset is independent of physical storage technology.

Each Dataset belongs to exactly one Connection.

Relationship:

Connection (1) -------- (N) Dataset

---

## Design Decisions

### DD-001 Logical Dataset

**Decision**

Dataset represents a logical business object.

**Reason**

Users should not depend on physical database structures.

---

### DD-002 Physical Object Name

**Decision**

Dataset stores the original physical object name.

Examples:

- dbo.WeatherObservation
- station_data.csv
- api/weather/current

**Reason**

EDIP must know where data originates while presenting a logical name to users.

---

### DD-003 Dataset Name

**Decision**

Each Dataset has a logical DatasetName.

Examples:

- Surface Observation
- Synoptic Observation
- Rainfall Data

**Reason**

Logical names are easier for users to understand than physical table names.

---

### DD-004 Dataset Ownership

**Decision**

Each Dataset belongs to one Connection.

**Reason**

A Dataset can only be retrieved through one physical connection.

---

### DD-005 Technology Independence

**Decision**

Dataset does not store database-specific implementation details.

**Reason**

Changing the storage technology should not affect the business model.

---

## Consequences

### Advantages

- Independent from database technology.
- Easier migration.
- Cleaner business model.
- Supports multiple storage technologies.
- Easier integration with future systems.

### Disadvantages

- Requires mapping between logical and physical names.
- Slightly more metadata must be maintained.

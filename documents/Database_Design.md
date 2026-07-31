# EDIP Database Design

## 1. Overview

EDIP Version 1 uses a metadata-based database model to manage information about data sources, connections, datasets and data quality rules.

The database design focuses on flexibility and extensibility to support different types of data sources.

---

## 2. Database Entities

The core entities in Version 1 are:

- DataSource
- Connection
- Dataset
- DataQualityRule

---

## 3. Entity Description

## DataSource

Purpose:

Stores information about registered data sources.

Main responsibilities:

- Identify available data sources
- Store source type information
- Maintain source ownership and status information

---

## Connection

Purpose:

Stores technical connection metadata related to data sources.

Relationship:

One DataSource can have multiple Connections.

---

## Dataset

Purpose:

Stores information about logical data assets available through connections.

Examples:

- Database tables
- Views
- Files
- API datasets

Relationship:

One Connection can contain multiple Datasets.

---

## DataQualityRule

Purpose:

Stores quality rules defined for datasets.

Examples:

- Completeness checks
- Validity checks
- Consistency checks

Relationship:

One Dataset can have multiple DataQualityRules.

---

## 4. Entity Relationship Summary

The logical relationship model:

DataSource
    |
    | One-to-Many
    |
Connection
    |
    | One-to-Many
    |
Dataset
    |
    | One-to-Many
    |
DataQualityRule

---

## 5. Design Considerations

The database design follows these principles:

- Avoid dependency on a specific business domain
- Support different data source types
- Maintain clear entity relationships
- Allow future expansion without redesigning the core model

---

## 6. Version 1 Database Scope

Version 1 includes only the metadata foundation.

Operational processing, monitoring, analytics and intelligent features are planned for future versions.

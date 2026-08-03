# Dataset

## Purpose

Represents a logical collection of related data managed by EDIP.

A Dataset describes a data asset independently from its physical storage implementation.

A Dataset can represent different data types such as tables, views, APIs, files, or streams.

---

## Table Information

| Property | Value |
|---|---|
| Table Name | dbo.Dataset |
| Primary Key | DatasetID |
| Version | 1.0 |

---

## Attributes

| Column | Description |
|---|---|
| DatasetID | Unique identifier of the dataset |
| ConnectionID | Reference to the related Connection |
| DatasetName | Logical name of the dataset |
| DatasetType | Type of dataset such as Table, View, API, or File |
| OriginalObjectName | Physical object or source name |
| PrimaryKeyColumn | Primary key column name when applicable |
| RefreshMethod | Method used to refresh dataset data |
| RefreshFrequency | Frequency of data refresh |
| DataFormat | Format of stored or transferred data |
| Status | Operational status of the dataset |
| Description | Additional information about the dataset |
| CreatedDate | Record creation timestamp |
| CreatedBy | User or process that created the record |

---

## Business Rules

- Every Dataset belongs to exactly one Connection.
- A Connection can have multiple Datasets.
- Dataset represents logical data, not physical storage.
- Dataset can originate from different source types including:
  - Database tables
  - Database views
  - APIs
  - Files
  - Data streams

---

## Relationships

Connection (1) ---- (N) Dataset

---

## Related ADRs

- ADR-005 Dataset Architecture
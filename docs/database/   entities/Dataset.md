# Dataset

## Purpose

Represents a logical collection of related data within a DataSource.

## Attributes

- DatasetID
- ConnectionID
- DatasetName
- DatasetType
- OriginalObjectName
- PrimaryKey
- RefreshMethod
- RefreshFrequency
- DataFormat
- Description
- Status
- CreatedDate
- CreatedBy

## Business Rules

- Every Dataset belongs to one Connection.
- A Connection can contain one or many Datasets.
- A Dataset represents logical data, not physical storage.
- A Dataset may originate from a table, view, file, API, or stream.

## Relationships

Connection (1) ---- (N) Dataset

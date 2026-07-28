# Dataset Index Design

## Primary Key

PK_Dataset
(Clustered Index)

---

## Nonclustered Indexes

### IX_Dataset_ConnectionID

Purpose

Retrieve datasets belonging to a connection.

Example

SELECT *
FROM dbo.Dataset
WHERE ConnectionID = 10;

Reason

Frequently used in parent-child navigation.

---

### IX_Dataset_DatasetName

Purpose

Search datasets by name.

Example

SELECT *
FROM dbo.Dataset
WHERE DatasetName='SynopticObservation';

Reason

Dataset names are commonly searched.

---

### IX_Dataset_ObjectName

Purpose

Search datasets by physical database object.

Example

SELECT *
FROM dbo.Dataset
WHERE ObjectName='tblObservation';

Reason

Useful for metadata exploration and maintenance.

---

## No Index

The following columns do not require indexes.

- DatasetType
- IsActive

Reason

Low selectivity and low search frequency.

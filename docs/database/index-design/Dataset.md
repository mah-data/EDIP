# Dataset Index Design

## Primary Key

PK_Dataset
(Clustered Index)
# Dataset Index Design

## Primary Key

| Index Name | Type            |
|------------|-----------------|
| PK_Dataset | Clustered Index |

-------------------------------------------------

## Nonclustered Indexes

### IX_Dataset_ConnectionID

| Property | Description                                 |
|----------|---------------------------------------------|
| Column   | ConnectionID                                |
| Type     | Nonclustered Index                          |
| Purpose  | Retrieve datasets belonging to a connection |

Example Query:

    SELECT *
    FROM dbo.Dataset
    WHERE ConnectionID = 1;

Reason:

ConnectionID is frequently used in relationship queries and join operations.

-------------------------------------------------

### IX_Dataset_DatasetName

| Property | Description                    |
|----------|--------------------------------|
| Column   | DatasetName                    |
| Type     | Nonclustered Index             |
| Purpose  | Search dataset by logical name |

Example Query:

    SELECT *
    FROM dbo.Dataset
    WHERE DatasetName = 'DST001';

Reason:

DatasetName is a common identifier used for dataset discovery.

-------------------------------------------------

## Columns Without Additional Index

| Column           | Reason                   |
|------------------|--------------------------|
| DatasetType      | Limited number of values |
| Status           | Low selectivity          |
| DataFormat       | Limited filtering usage  |
| RefreshFrequency | Low search frequency     |

-------------------------------------------------

## Design Notes

- Primary key is implemented as a clustered index.
- ConnectionID supports efficient parent-child relationship queries.
- Additional indexes can be added based on workload analysis and execution plans.
---


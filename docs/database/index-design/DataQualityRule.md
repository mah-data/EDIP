# DataQualityRule Index Design

## Primary Key

| Index Name         | Type            |
|--------------------|-----------------|
| PK_DataQualityRule | Clustered Index |

-------------------------------------------------

## Nonclustered Indexes

### IX_DataQualityRule_DatasetID

| Property | Description                                   |
|----------|-----------------------------------------------|
| Column   | DatasetID                                     |
| Type     | Nonclustered Index                            |
| Purpose  | Retrieve quality rules belonging to a dataset |

Example Query:

    SELECT *
    FROM dbo.DataQualityRule
    WHERE DatasetID = 1;

Reason:

DatasetID is frequently used in relationship queries and rule retrieval operations.

-------------------------------------------------

### IX_DataQualityRule_RuleCategory

| Property | Description                       |
|----------|-----------------------------------|
| Column   | RuleCategory                      |
| Type     | Nonclustered Index                |
| Purpose  | Filter rules by quality category  |

Example Query:

    SELECT *
    FROM dbo.DataQualityRule
    WHERE RuleCategory = 'Completeness';

Reason:

RuleCategory can be used for grouping and filtering quality validation rules.

-------------------------------------------------

## Columns Without Additional Index

| Column     | Reason                            |
|------------|-----------------------------------|
| Severity   | Limited number of possible values |
| IsBlocking | BIT column with low selectivity   |
| IsEnabled  | BIT column with low selectivity   |

-------------------------------------------------

## Design Notes

- Primary key is implemented as a clustered index.
- DatasetID supports efficient parent-child relationship queries.
- BIT columns are not indexed in Version 1 due to low selectivity.
- Index strategy can evolve based on workload analysis and execution plan review.
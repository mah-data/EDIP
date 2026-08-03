# DataSource Index Design

## Primary Key

| Index Name    | Type            |
|---------------|-----------------|
| PK_DataSource | Clustered Index |

-------------------------------------------------

## Nonclustered Indexes

### IX_DataSource_SourceName

| Property | Description                              |
|----------|------------------------------------------|
| Column   | SourceName                               |
| Type     | Nonclustered Index                       |
| Purpose  | Improve search performance by SourceName |

Example Query:

    SELECT *
    FROM dbo.DataSource
    WHERE SourceName = 'SRC001';

Reason:

SourceName is a common lookup attribute and can improve source identification queries.

-------------------------------------------------

## Columns Without Additional Index

| Column     | Reason                            |
|------------|-----------------------------------|
| SourceType | Low selectivity                   |
| Owner      | Limited filtering usage           |
| Status     | Limited number of possible values |

-------------------------------------------------

## Design Notes

- Primary key is implemented as a clustered index.
- Additional indexes are created based on query access patterns.
- Index strategy can evolve based on execution plan analysis and workload changes.
# Connection Index Design

## Primary Key

| Index Name    | Type            |
|---------------|-----------------|
| PK_Connection | Clustered Index |

---

## Nonclustered Indexes

### IX_Connection_DataSourceID

| Property | Description                                        |
|----------|----------------------------------------------------|
| Column   | DataSourceID                                       |
| Type     | Nonclustered Index                                 |
| Purpose  | Retrieve all connections belonging to a DataSource |

Example Query:

```sql
SELECT *
FROM dbo.[Connection]
WHERE DataSourceID = 1;
```
Reason:

DataSourceID is frequently used in relationship queries and join operations.
---

IX_Connection_ConnectionName

| Property | Description               |
| -------- | ------------------------- |
| Column   | ConnectionName            |
| Type     | Nonclustered Index        |
| Purpose  | Search connection by name |

```
Example Query:

SELECT *
FROM dbo.[Connection]
WHERE ConnectionName = 'Main Connection';
```
Reason:

ConnectionName is commonly used by administrators to identify and search connections.
---
Columns Without Additional Index

| Column         | Reason                            |
| -------------- | --------------------------------- |
| ConnectionType | Low selectivity                   |
| Status         | Limited number of possible values |
| Environment    | Limited filtering usage           |

```
Design Notes
Primary key is implemented as a clustered index.
Foreign key columns used in frequent joins should be considered for indexing.
Index strategy can evolve based on workload changes and execution plan analysis.
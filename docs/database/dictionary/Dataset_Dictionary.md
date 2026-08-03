# Dataset Dictionary

| Column | Data Type | Description |
|---------|-----------|-------------|
| DatasetID | INT | Unique identifier |
| ConnectionID | INT | Related Connection identifier |
| DatasetName | NVARCHAR(200) | Logical dataset name |
| DatasetType | NVARCHAR(100) | Dataset category |
| OriginalObjectName | NVARCHAR(300) | Physical object name |
| PrimaryKeyColumn | NVARCHAR(200) | Primary key column name |
| RefreshMethod | NVARCHAR(50) | Data refresh method |
| RefreshFrequency | NVARCHAR(50) | Data refresh frequency |
| DataFormat | NVARCHAR(50) | Data format |
| Status | NVARCHAR(50) | Current status |
| Description | NVARCHAR(1000) | Additional information |
| CreatedDate | DATETIME2 | Creation date |
| CreatedBy | NVARCHAR(100) | Creator |
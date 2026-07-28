/*========================================================
EDIP
Sample Data
========================================================*/

---------------------------------------------------------
-- DataSource
---------------------------------------------------------

INSERT INTO dbo.DataSource
(
    SourceName,
    SourceType,
    Owner,
    Status,
    Description,
    IsActive,
    CreatedBy
)
VALUES
(
    N'SRC001',
    N'Generic',
    N'System',
    N'Production',
    N'Sample Data Source 001',
    1,
    N'System'
),
(
    N'SRC002',
    N'Generic',
    N'System',
    N'Production',
    N'Sample Data Source 002',
    1,
    N'System'
),
(
    N'SRC003',
    N'Generic',
    N'System',
    N'Production',
    N'Sample Data Source 003',
    1,
    N'System'
);

GO

---------------------------------------------------------
-- Connection
---------------------------------------------------------

INSERT INTO dbo.Connection
(
    DataSourceID,
    ConnectionName,
    ConnectionType,
    ServerName,
    DatabaseName,
    IsDefault,
    IsActive,
    CreatedBy
)
VALUES
(
    1,
    N'CON001',
    N'Database',
    N'SERVER001',
    N'DATABASE001',
    1,
    1,
    N'System'
),
(
    2,
    N'CON002',
    N'API',
    N'ENDPOINT001',
    N'API001',
    1,
    1,
    N'System'
),
(
    3,
    N'CON003',
    N'File',
    N'FILESERVER001',
    N'FILE001',
    1,
    1,
    N'System'
);

GO

---------------------------------------------------------
-- Dataset
---------------------------------------------------------

INSERT INTO dbo.Dataset
(
    ConnectionID,
    DatasetName,
    DatasetType,
    SchemaName,
    ObjectName,
    RefreshPolicy,
    IsActive,
    CreatedBy
)
VALUES
(
    1,
    N'DST001',
    N'Table',
    N'dbo',
    N'OBJ001',
    N'Daily',
    1,
    N'System'
),
(
    1,
    N'DST002',
    N'View',
    N'dbo',
    N'OBJ002',
    N'Hourly',
    1,
    N'System'
),
(
    2,
    N'DST003',
    N'API',
    N'api',
    N'OBJ003',
    N'Realtime',
    1,
    N'System'
),
(
    3,
    N'DST004',
    N'File',
    N'file',
    N'OBJ004',
    N'Weekly',
    1,
    N'System'
);

GO

---------------------------------------------------------
-- DataQualityRule
---------------------------------------------------------

INSERT INTO dbo.DataQualityRule
(
    DatasetID,
    RuleName,
    RuleType,
    RuleExpression,
    Severity,
    IsActive,
    CreatedBy
)
VALUES
(
    1,
    N'RUL001',
    N'Completeness',
    N'Expression001',
    N'High',
    1,
    N'System'
),
(
    1,
    N'RUL002',
    N'Uniqueness',
    N'Expression002',
    N'Critical',
    1,
    N'System'
),
(
    2,
    N'RUL003',
    N'Consistency',
    N'Expression003',
    N'Medium',
    1,
    N'System'
),
(
    3,
    N'RUL004',
    N'Validity',
    N'Expression004',
    N'High',
    1,
    N'System'
),
(
    4,
    N'RUL005',
    N'Accuracy',
    N'Expression005',
    N'Low',
    1,
    N'System'
);

GO

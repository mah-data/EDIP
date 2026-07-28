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
    N'Weather System',
    N'Meteorological',
    N'National Meteorological Organization',
    N'Production',
    N'Main operational weather data source',
    1,
    N'System'
);

GO

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
    N'Climate Archive',
    N'Archive',
    N'Climate Department',
    N'Production',
    N'Historical climate observations',
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
    N'Weather SQL',
    N'SQL Server',
    N'SRV-WEATHER',
    N'WeatherDB',
    1,
    1,
    N'System'
);

GO

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
    2,
    N'Climate Archive SQL',
    N'SQL Server',
    N'SRV-CLIMATE',
    N'ClimateDB',
    1,
    1,
    N'System'
);

GO
/*========================================================
Dataset
========================================================*/

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
    N'Synoptic Observation',
    N'Table',
    N'dbo',
    N'tblSynopticObservation',
    N'Daily',
    1,
    N'System'
);

GO

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
    2,
    N'Climate History',
    N'View',
    N'dbo',
    N'vwClimateHistory',
    N'Monthly',
    1,
    N'System'
);

GO
/*========================================================
DataQualityRule
========================================================*/

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
    N'Temperature Range',
    N'Range',
    N'Temperature BETWEEN -60 AND 60',
    N'High',
    1,
    N'System'
);

GO

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
    N'Station Code Required',
    N'NotNull',
    N'StationCode IS NOT NULL',
    N'Critical',
    1,
    N'System'
);

GO

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
    2,
    N'Observation Date Required',
    N'NotNull',
    N'ObservationDate IS NOT NULL',
    N'High',
    1,
    N'System'
);

GO

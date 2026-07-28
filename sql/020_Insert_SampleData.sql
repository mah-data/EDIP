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

/*========================================================
EDIP
Validation Queries
Version 1.0
========================================================*/

USE EDIP;

GO

-- Check DataSource

SELECT *
FROM dbo.DataSource;


-- Check Connection

SELECT *
FROM dbo.Connection;


-- Check Dataset

SELECT *
FROM dbo.Dataset;


-- Check DataQualityRule

SELECT *
FROM dbo.DataQualityRule;

GO
-- Check Relations 
USE EDIP;
GO

SELECT
    ds.SourceName,
    c.ConnectionName,
    d.DatasetName,
    d.DatasetType,
    r.RuleName,
    r.Severity,
    r.IsBlocking,
    r.IsEnabled
FROM dbo.DataSource ds
INNER JOIN dbo.[Connection] c
    ON ds.DataSourceID = c.DataSourceID
INNER JOIN dbo.Dataset d
    ON c.ConnectionID = d.ConnectionID
LEFT JOIN dbo.DataQualityRule r
    ON d.DatasetID = r.DatasetID
ORDER BY ds.SourceName, d.DatasetName;
GO

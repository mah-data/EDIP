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
  
SELECT
    ds.SourceName,
    c.ConnectionName,
    d.DatasetName
FROM dbo.DataSource ds

INNER JOIN dbo.Connection c
ON ds.DataSourceID = c.DataSourceID

INNER JOIN dbo.Dataset d
ON c.ConnectionID = d.ConnectionID;

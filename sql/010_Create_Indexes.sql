/*========================================================
EDIP
Index Creation Script
========================================================*/

-- DataSource

CREATE NONCLUSTERED INDEX IX_DataSource_SourceName
ON dbo.DataSource(SourceName);

GO

-- Connection

CREATE NONCLUSTERED INDEX IX_Connection_DataSourceID
ON dbo.Connection(DataSourceID);

GO

CREATE NONCLUSTERED INDEX IX_Connection_ConnectionName
ON dbo.Connection(ConnectionName);

GO

-- Dataset

CREATE NONCLUSTERED INDEX IX_Dataset_ConnectionID
ON dbo.Dataset(ConnectionID);

GO

CREATE NONCLUSTERED INDEX IX_Dataset_DatasetName
ON dbo.Dataset(DatasetName);

GO

CREATE NONCLUSTERED INDEX IX_Dataset_ObjectName
ON dbo.Dataset(OriginalObjectName);

GO
  
-- DataQualityRule

CREATE NONCLUSTERED INDEX IX_DataQualityRule_DatasetID
ON dbo.DataQualityRule(DatasetID);

GO

CREATE NONCLUSTERED INDEX IX_DataQualityRule_RuleName
ON dbo.DataQualityRule(RuleName);

GO

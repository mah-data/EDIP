CREATE TABLE dbo.DataSource
(
    DataSourceID INT IDENTITY(1,1) NOT NULL,

    SourceName NVARCHAR(200) NOT NULL,

    SourceType NVARCHAR(100) NOT NULL,

    Owner NVARCHAR(200) NULL,

    Status NVARCHAR(50) NOT NULL,

    Description NVARCHAR(1000) NULL,

    CreatedDate DATETIME2 NOT NULL
        CONSTRAINT DF_DataSource_CreatedDate
        DEFAULT(SYSDATETIME()),

    CreatedBy NVARCHAR(100) NOT NULL,

    CONSTRAINT PK_DataSource
        PRIMARY KEY CLUSTERED (DataSourceID)
);

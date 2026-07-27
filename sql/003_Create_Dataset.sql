CREATE TABLE dbo.Dataset
(
    DatasetID INT IDENTITY(1,1) NOT NULL,

    ConnectionID INT NOT NULL,

    DatasetName NVARCHAR(200) NOT NULL,

    DatasetType NVARCHAR(100) NOT NULL,

    OriginalObjectName NVARCHAR(300) NOT NULL,

    PrimaryKeyColumn NVARCHAR(200) NULL,

    RefreshMethod NVARCHAR(50) NOT NULL,

    RefreshFrequency NVARCHAR(50) NOT NULL,

    DataFormat NVARCHAR(50) NOT NULL,

    Status NVARCHAR(50) NOT NULL,

    Description NVARCHAR(1000) NULL,

    CreatedDate DATETIME2 NOT NULL
        CONSTRAINT DF_Dataset_CreatedDate
        DEFAULT(SYSDATETIME()),

    CreatedBy NVARCHAR(100) NOT NULL,

    CONSTRAINT PK_Dataset
        PRIMARY KEY CLUSTERED (DatasetID),

    CONSTRAINT FK_Dataset_Connection
        FOREIGN KEY (ConnectionID)
        REFERENCES dbo.Connection(ConnectionID)
);

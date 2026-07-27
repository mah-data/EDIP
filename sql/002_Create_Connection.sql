/*
=========================================================
Table : Connection
=========================================================

Purpose
-------
Represents a physical connection.

Architecture Decisions
----------------------

ADR-003
One DataSource can have many Connections.

ADR-004
Credentials are stored separately.

Design Decisions
----------------

✔ Password is NOT stored here.

✔ CredentialID references secure credentials.

✔ Timeout default = 30 seconds.

=========================================================
*/
CREATE TABLE dbo.Connection
(
    ConnectionID INT IDENTITY(1,1) NOT NULL,

    DataSourceID INT NOT NULL,

    ConnectionName NVARCHAR(200) NOT NULL,

    ConnectionType NVARCHAR(100) NOT NULL,

    ServerName NVARCHAR(300) NULL,

    DatabaseName NVARCHAR(200) NULL,

    Port INT NULL,

    AuthenticationType NVARCHAR(50) NOT NULL,

    CredentialID INT NULL,

    Environment NVARCHAR(50) NOT NULL,

    TimeoutSeconds INT NOT NULL
        CONSTRAINT DF_Connection_Timeout
        DEFAULT(30),

    Status NVARCHAR(50) NOT NULL,

    Description NVARCHAR(1000) NULL,

    CreatedDate DATETIME2 NOT NULL
        CONSTRAINT DF_Connection_CreatedDate
        DEFAULT(SYSDATETIME()),

    CreatedBy NVARCHAR(100) NOT NULL,

    CONSTRAINT PK_Connection
        PRIMARY KEY CLUSTERED (ConnectionID),

    CONSTRAINT FK_Connection_DataSource
        FOREIGN KEY (DataSourceID)
        REFERENCES dbo.DataSource(DataSourceID)
);

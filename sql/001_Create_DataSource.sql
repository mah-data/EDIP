/*
=========================================================
Table : DataSource
Version : 1.0
Project : EDIP
Author : Mahtab
=========================================================

Purpose
-------
Represents a logical business source of data.

Description
-----------
A DataSource identifies the business owner of the data.
It is independent of database technology.

Architecture Decisions
----------------------
ADR-002
DataSource is a Business Concept.

ADR-003
One DataSource can have many Connections.

Design Decisions
----------------
✔ SourceType is stored as NVARCHAR.
Reason:
To simplify Version 1.0.
Lookup table may be introduced in a future version.

✔ Status is used instead of IsActive.
Reason:
Supports multiple operational states.

=========================================================
*/
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

/*
=========================================================
Table : DataQualityRule
Project : EDIP
Version : 1.0
=========================================================

Purpose
-------
Stores validation rules used to evaluate Dataset quality.

Description
-----------
Each rule belongs to one Dataset.
Rules are executed by the Data Quality Engine.

Architecture Decision
---------------------
ADR-006
Data Quality Rule Engine

Design Decisions
----------------

- RuleExpression is stored as NVARCHAR(MAX)
  to support simple and complex validation logic.

- Severity is stored as NVARCHAR
  because severity levels are limited in Version 1.0.

- IsEnabled allows disabling rules without deleting them.

- IsBlocking determines whether invalid data
  should stop processing.

=========================================================
*/
CREATE TABLE dbo.DataQualityRule
(
    RuleID INT IDENTITY(1,1) NOT NULL,

    DatasetID INT NOT NULL,

    RuleName NVARCHAR(200) NOT NULL,

    RuleCategory NVARCHAR(50) NOT NULL,

    RuleExpression NVARCHAR(MAX) NOT NULL,

    Severity NVARCHAR(20) NOT NULL,

    IsBlocking BIT NOT NULL
        CONSTRAINT DF_DataQualityRule_IsBlocking
        DEFAULT(0),

    IsEnabled BIT NOT NULL
        CONSTRAINT DF_DataQualityRule_IsEnabled
        DEFAULT(1),

    Description NVARCHAR(1000) NULL,

    CreatedDate DATETIME2 NOT NULL
        CONSTRAINT DF_DataQualityRule_CreatedDate
        DEFAULT(SYSDATETIME()),

    CreatedBy NVARCHAR(100) NOT NULL,


    CONSTRAINT PK_DataQualityRule
        PRIMARY KEY CLUSTERED (RuleID),


    CONSTRAINT FK_DataQualityRule_Dataset
        FOREIGN KEY (DatasetID)
        REFERENCES dbo.Dataset(DatasetID)
);

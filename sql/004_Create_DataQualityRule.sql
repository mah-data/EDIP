/*
=========================================================
Table : DataQualityRule
Version : 1.0
Project : EDIP
=========================================================

Purpose
-------
Stores data validation rules.

Description
-----------
Each Dataset may have multiple validation rules.

Architecture Decisions
----------------------

ADR-006

Each Rule belongs to exactly one Dataset.

Rules are stored independently.

Design Decisions
----------------

✔ RuleExpression stores executable validation logic.

✔ Severity is stored as text.

✔ IsBlocking determines whether invalid data
  should be rejected.

✔ IsEnabled allows disabling a rule without deleting it.

✔ RuleExpression uses NVARCHAR(MAX)
to support simple and complex validation rules.
✔ Severity is stored as NVARCHAR.
Reason:
Small fixed list.
Lookup table is unnecessary in Version 1.0.

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

/*========================================================
EDIP
Sample Data
Version : 1.0
========================================================*/

USE EDIP;
GO


/*========================================================
DataSource
========================================================*/

INSERT INTO dbo.DataSource
(
    SourceName,
    SourceType,
    Owner,
    Status,
    Description,
    CreatedBy
)
VALUES
(
    N'Enterprise ERP',
    N'Database',
    N'Business Unit',
    N'Production',
    N'Enterprise Resource Planning data source',
    N'System'
),
(
    N'CRM Platform',
    N'API',
    N'Sales Department',
    N'Production',
    N'Customer Relationship Management service',
    N'System'
),
(
    N'Shared File Repository',
    N'File',
    N'Operations Department',
    N'Production',
    N'Business documents and shared files',
    N'System'
);

GO


/*========================================================
Connection
========================================================*/

INSERT INTO dbo.[Connection]
(
    DataSourceID,
    ConnectionName,
    ConnectionType,
    ServerName,
    DatabaseName,
    Port,
    AuthenticationType,
    CredentialID,
    Environment,
    Status,
    Description,
    CreatedBy
)
VALUES
(
    1,
    N'ERP SQL Connection',
    N'SQL Server',
    N'ERP-SERVER01',
    N'ERPDB',
    1433,
    N'SQL Authentication',
    NULL,
    N'Production',
    N'Active',
    N'Primary ERP database connection',
    N'System'
),
(
    2,
    N'CRM API Connection',
    N'REST API',
    N'api.company.com',
    NULL,
    443,
    N'API Key',
    NULL,
    N'Production',
    N'Active',
    N'CRM service API connection',
    N'System'
),
(
    3,
    N'File Repository Connection',
    N'File System',
    N'FILESERVER01',
    NULL,
    NULL,
    N'Windows Authentication',
    NULL,
    N'Production',
    N'Active',
    N'Shared file repository connection',
    N'System'
);

GO


/*========================================================
Dataset
========================================================*/

INSERT INTO dbo.Dataset
(
    ConnectionID,
    DatasetName,
    DatasetType,
    OriginalObjectName,
    PrimaryKeyColumn,
    RefreshMethod,
    RefreshFrequency,
    DataFormat,
    Status,
    Description,
    CreatedBy
)
VALUES
(
    1,
    N'Customer Master Data',
    N'Table',
    N'Customers',
    N'CustomerID',
    N'Full Load',
    N'Daily',
    N'Relational',
    N'Active',
    N'Customer master information from ERP database',
    N'System'
),
(
    1,
    N'Sales Transactions',
    N'Table',
    N'SalesOrders',
    N'OrderID',
    N'Incremental',
    N'Hourly',
    N'Relational',
    N'Active',
    N'Sales transaction data from ERP database',
    N'System'
),
(
    2,
    N'Customer Service API',
    N'API',
    N'/customers',
    NULL,
    N'Full Load',
    N'Realtime',
    N'JSON',
    N'Active',
    N'Customer information received from API',
    N'System'
),
(
    3,
    N'Product Catalog File',
    N'CSV',
    N'products.csv',
    N'ProductID',
    N'Full Load',
    N'Daily',
    N'CSV',
    N'Active',
    N'Product catalog file source',
    N'System'
);

GO


/*========================================================
DataQualityRule
========================================================*/

INSERT INTO dbo.DataQualityRule
(
    DatasetID,
    RuleName,
    RuleCategory,
    RuleExpression,
    Severity,
    IsBlocking,
    IsEnabled,
    Description,
    CreatedBy
)
VALUES
(
    1,
    N'Customer ID Required',
    N'Completeness',
    N'CustomerID IS NOT NULL',
    N'Critical',
    1,
    1,
    N'Customer identifier must always exist',
    N'System'
),
(
    1,
    N'Customer Name Required',
    N'Completeness',
    N'CustomerName IS NOT NULL',
    N'High',
    0,
    1,
    N'Customer name should not be empty',
    N'System'
),
(
    2,
    N'Order Amount Positive',
    N'Validity',
    N'OrderAmount >= 0',
    N'High',
    1,
    1,
    N'Sales amount cannot be negative',
    N'System'
),
(
    3,
    N'API Response Validation',
    N'Availability',
    N'ResponseCode = 200',
    N'Medium',
    0,
    1,
    N'API response must be successful',
    N'System'
),
(
    4,
    N'CSV File Structure Validation',
    N'Consistency',
    N'RequiredColumnsExist = TRUE',
    N'Medium',
    0,
    1,
    N'CSV file must contain required columns',
    N'System'
);

GO

# Connection Dictionary

| Column | Data Type | Description |
|---------|-----------|-------------|
| ConnectionID | INT | Unique identifier |
| DataSourceID | INT | Related DataSource identifier |
| ConnectionName | NVARCHAR(200) | Connection logical name |
| ConnectionType | NVARCHAR(100) | Connection category |
| ServerName | NVARCHAR(300) | Server or endpoint name |
| DatabaseName | NVARCHAR(200) | Target database name |
| Port | INT | Network port |
| AuthenticationType | NVARCHAR(50) | Authentication method |
| CredentialID | INT | External credential reference |
| Environment | NVARCHAR(50) | Execution environment |
| TimeoutSeconds | INT | Connection timeout value |
| Status | NVARCHAR(50) | Current status |
| Description | NVARCHAR(1000) | Additional information |
| CreatedDate | DATETIME2 | Creation date |
| CreatedBy | NVARCHAR(100) | Creator |
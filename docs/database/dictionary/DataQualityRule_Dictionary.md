# DataQualityRule Dictionary

| Column | Data Type | Description |
|---------|-----------|-------------|
| RuleID | INT | Unique identifier |
| DatasetID | INT | Related Dataset identifier |
| RuleName | NVARCHAR(200) | Validation rule name |
| RuleCategory | NVARCHAR(50) | Quality rule category |
| RuleExpression | NVARCHAR(MAX) | Validation logic expression |
| Severity | NVARCHAR(20) | Validation failure severity |
| IsBlocking | BIT | Determines whether failure blocks processing |
| IsEnabled | BIT | Determines whether rule is active |
| Description | NVARCHAR(1000) | Additional information |
| CreatedDate | DATETIME2 | Creation date |
| CreatedBy | NVARCHAR(100) | Creator |
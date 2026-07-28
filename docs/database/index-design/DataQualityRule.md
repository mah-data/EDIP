# DataQualityRule Index Design

## Primary Key

PK_DataQualityRule

(Clustered Index)

---

## Nonclustered Indexes

### IX_DataQualityRule_DatasetID

Purpose

Retrieve all rules belonging to a dataset.

Example

SELECT *
FROM dbo.DataQualityRule
WHERE DatasetID = 15;

Reason

Frequently used when validating a dataset.

---

### IX_DataQualityRule_RuleName

Purpose

Search a rule by its name.

Example

SELECT *
FROM dbo.DataQualityRule
WHERE RuleName='Temperature Range';

Reason

Rule names are commonly used by administrators.

---

## No Index

No indexes are required for

- RuleType
- Severity
- IsActive

Reason

Low selectivity and low search frequency.

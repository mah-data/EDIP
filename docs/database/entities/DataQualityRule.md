# DataQualityRule

## Purpose

Represents validation rules used to evaluate the quality of data stored in a Dataset.

DataQualityRule defines the metadata required by the Data Quality Engine to validate data assets.

---

## Table Information

| Property | Value |
|---|---|
| Table Name | dbo.DataQualityRule |
| Primary Key | RuleID |
| Version | 1.0 |

---

## Description

DataQualityRule stores business and technical validation rules applied to Datasets.

Rules can evaluate different quality dimensions including:

- Completeness
- Consistency
- Validity
- Accuracy
- Uniqueness

A Dataset can have multiple DataQualityRules.

---

## Attributes

| Column | Description |
|---|---|
| RuleID | Unique identifier of the quality rule |
| DatasetID | Reference to the related Dataset |
| RuleName | Name of the validation rule |
| RuleCategory | Quality dimension category |
| RuleExpression | Validation logic expression |
| Severity | Importance level of validation failure |
| IsBlocking | Determines whether failure blocks processing |
| IsEnabled | Determines whether the rule is active |
| Description | Additional information about the rule |
| CreatedDate | Record creation timestamp |
| CreatedBy | User or process that created the record |

---

## Business Rules

- Every DataQualityRule belongs to exactly one Dataset.
- A Dataset can have multiple DataQualityRules.
- RuleExpression stores the validation logic definition.
- Severity indicates the importance of a validation failure.
- IsBlocking determines whether invalid data should stop processing.
- Disabled rules remain stored and can be enabled again.

---

## Relationships

Dataset (1) ---- (N) DataQualityRule


---

## Notes

DataQualityRule stores metadata about validation rules.

Execution of validation logic is handled by the Data Quality Engine and is outside the responsibility of this entity.

---

## Related ADRs

- ADR-006 Data Quality Rule Engine
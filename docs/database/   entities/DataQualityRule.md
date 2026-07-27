# DataQualityRule

## Purpose

Represents a validation rule used to evaluate the quality of data stored in a Dataset.

## Description

DataQualityRule defines business and technical rules that are executed by the Data Quality Engine.

Rules are applied to Datasets to check data correctness, completeness, consistency, validity, and reliability before the data is used for analysis, reporting, or prediction.

A Dataset can have multiple DataQualityRules.

## Attributes

- RuleID
- DatasetID
- RuleName
- RuleCategory
- RuleExpression
- Severity
- IsBlocking
- IsEnabled
- Description
- CreatedDate
- CreatedBy

## Business Rules

- Every DataQualityRule belongs to exactly one Dataset.
- A Dataset can have multiple DataQualityRules.
- RuleExpression contains the validation logic.
- Severity indicates the importance level of a validation failure.
- IsBlocking determines whether invalid data should be rejected.
- Disabled rules remain stored and can be activated again.

## Relationships

Dataset (1) ---- (N) DataQualityRule

## Notes

DataQualityRule stores metadata about validation rules.

Execution of rules is handled by the Data Quality Engine and is not part of this entity.

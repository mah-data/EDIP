# DataQualityRule

## Purpose

Represents a quality control rule that is applied to a Dataset.

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

- Every Rule belongs to one Dataset.
- One Dataset can have many Rules.
- Rules can be enabled or disabled independently.
- Every Rule has a severity level.

## Relationships

Dataset (1) ---- (N) DataQualityRule

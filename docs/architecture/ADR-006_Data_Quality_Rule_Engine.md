# ADR-006

## Title

Data Quality Rule Engine

## Status

Accepted

## Context

Incoming data quality must be verified before analysis.

Different datasets require different validation rules.

## Decision

Every Dataset may contain multiple Data Quality Rules.

Rules are stored separately.

Each rule contains:

- RuleExpression
- Severity
- Blocking Mode
- RuleExpression is stored as NVARCHAR(MAX).

Reason:

- Validation rules may vary in length.
- Simple rules (e.g. `Temperature IS NOT NULL`) and complex rules (multiple conditions) are both supported.
- Using NVARCHAR(MAX) avoids future schema changes as rule complexity increases.

## Consequences

Advantages

- Flexible validation
- Reusable rules
- Easy maintenance

Disadvantages

- Additional processing

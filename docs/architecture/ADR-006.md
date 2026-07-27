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

## Consequences

Advantages

- Flexible validation
- Reusable rules
- Easy maintenance

Disadvantages

- Additional processing

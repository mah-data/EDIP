# ADR-006

## Title

Data Quality Rule Engine

## Status

Accepted

## Context

The EDIP system must validate incoming data before it is used for storage, analysis, reporting, or prediction.

Different datasets require different validation rules.

Examples:

- Temperature must be between -40 and 60.
- Humidity must be between 0 and 100.
- StationCode must not be NULL.
- ObservationTime must be unique.

To provide flexibility, validation rules should not be hard-coded inside the application.

## Decision

A separate entity named **DataQualityRule** will store validation rules.

Each Dataset may have one or more Data Quality Rules.

Relationship:

Dataset (1) -------- (N) DataQualityRule

The Data Quality Engine will read these rules and execute them automatically.

---

## Design Decisions

### DD-001 RuleExpression Data Type

**Decision**

RuleExpression is stored as **NVARCHAR(MAX)**.

**Reason**

Validation rules may vary from very simple to very complex.

Examples:

- Temperature IS NOT NULL
- Temperature BETWEEN -40 AND 60
- Humidity BETWEEN 0 AND 100 AND Pressure > 900

Using NVARCHAR(MAX) avoids future schema changes.

---

### DD-002 Severity Storage

**Decision**

Severity is stored as **NVARCHAR(20)**.

**Reason**

Severity values are limited and stable in Version 1.0.

Examples:

- Critical
- High
- Medium
- Low
- Information

A Lookup Table is unnecessary at this stage.

---

### DD-003 Rule Category

**Decision**

RuleCategory is stored as **NVARCHAR(50)**.

**Reason**

The number of rule categories is small and expected to remain stable.

Examples:

- Completeness
- Range
- Format
- Consistency
- Uniqueness

---

### DD-004 Rule Activation

**Decision**

Rules are enabled or disabled using **IsEnabled**.

**Reason**

Disabling a rule preserves its history and allows it to be reused later without deleting it.

---

### DD-005 Blocking Rules

**Decision**

The **IsBlocking** flag determines whether invalid data should be rejected.

**Reason**

Some validation failures are critical and must stop processing, while others should only generate warnings.

---

## Consequences

### Advantages

- Flexible validation
- Rules can be changed without modifying application code.
- Easy to maintain.
- Supports future expansion.
- Reusable validation rules.

### Disadvantages

- Slightly more complex execution logic.
- Requires a Data Quality Engine to interpret and execute rules.

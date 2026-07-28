# Sample Data Strategy

## Purpose

Provide realistic sample data for development, testing and performance tuning.

## Principles

- Sample data must represent realistic business scenarios.
- No production data should ever be stored in the repository.
- Sample data must preserve referential integrity.
- Sample data should be sufficient for performance testing.

## Loading Order

1. DataSource
2. Connection
3. Dataset
4. DataQualityRule

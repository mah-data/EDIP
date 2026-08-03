# EDIP View Strategy

## Purpose

Views provide a logical access layer over database tables.

They simplify data access for reporting, analytics, monitoring, and future data services without exposing the physical table structure directly.

-------------------------------------------------

## View Design Principles

| Principle       | Description                                         |
|-----------------|-----------------------------------------------------|
| Logical Layer   | Views provide a stable interface for data consumers |
| Security        | Views can limit exposed columns and records         |
| Reusability     | Common queries are centralized in views             |
| Maintainability | Changes in physical tables can be isolated          |

-------------------------------------------------

## Base Views

Base views provide direct logical access to core EDIP entities.

| View Name          | Source Table    | Purpose                                  |
|--------------------|-----------------|------------------------------------------|
| vw_DataSource      | DataSource      | Provides logical data source information |
| vw_Connection      | Connection      | Provides connection metadata             |
| vw_Dataset         | Dataset         | Provides dataset metadata                |
| vw_DataQualityRule | DataQualityRule | Provides data quality rule information   |

-------------------------------------------------

## Summary Views

Summary views provide aggregated information for monitoring and reporting.

| View Name          | Purpose                                                                              |
|--------------------|--------------------------------------------------------------------------------------|
| vw_MetadataSummary | Provides a consolidated metadata overview across DataSource, Connection, Dataset, and                                                                                         DataQualityRule |    

-------------------------------------------------

## Naming Convention

Views follow this naming pattern:

| Object Type | Naming Pattern  |
|------------ |---------------- |
| View        | vw_<EntityName> |

Examples:

- vw_DataSource
- vw_Connection
- vw_Dataset
- vw_DataQualityRule

-------------------------------------------------

## Design Notes

- Views do not replace base tables.
- Business logic should remain in dedicated processing layers.
- Views are designed for data consumption and reporting scenarios.
- Additional analytical views can be introduced as EDIP grows.
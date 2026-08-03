# EDIP Diagrams

## Purpose

This folder contains visual diagrams used to describe the EDIP architecture and database design.

Diagrams help communicate system structure, entity relationships, and data flow concepts.

-------------------------------------------------

## Available Diagrams

| File       | Description                                            |
|------------|--------------------------------------------------------|
| ERD.drawio | Entity Relationship Diagram for EDIP database entities |

-------------------------------------------------

## Database ERD

The ERD represents the relationship between core EDIP metadata entities:

| Entity     | Relationship                               |
|------------|--------------------------------------------|
| DataSource | One DataSource can have many Connections   |
| Connection | One Connection can have many Datasets      |
| Dataset    | One Dataset can have many DataQualityRules |

-------------------------------------------------

## Main Relationships

    DataSource (1) ---- (N) Connection

    Connection (1) ---- (N) Dataset

    Dataset (1) ---- (N) DataQualityRule

-------------------------------------------------

## Design Notes

- Diagrams are maintained as part of EDIP documentation.
- ERD reflects the current Version 1 database design.
- Future architectural diagrams can be added as the platform evolves.
# DataSource Index Design

## Primary Key

PK_DataSource
(Clustered Index)

---

## Nonclustered Indexes

### IX_DataSource_SourceName

Purpose

Search DataSource by SourceName.

Example

SELECT *
FROM dbo.DataSource
WHERE SourceName='WeatherDB';

Reason

SourceName has high selectivity and is expected to be frequently searched.

---

## No Index

The following columns do not require indexes.

- SourceType
- Owner
- Status
- IsActive

Reason

Low selectivity or infrequent search predicates.

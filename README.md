# EDIP
## Enterprise Data Intelligence Platform

## Overview

Enterprise Data Intelligence Platform (EDIP) is a modular enterprise data management platform designed to improve data understanding, quality, and governance.

EDIP focuses on managing metadata and data intelligence capabilities across different enterprise data sources.

The platform does not store business data itself. Instead, it manages information about data assets such as:

- Data Sources
- Connections
- Datasets
- Data Quality Rules
- Metadata Relationships

---

## Project Goals

The main objectives of EDIP are:

- Metadata Management
- Data Source Discovery
- Dataset Management
- Data Quality Rule Management
- Data Quality Monitoring
- Analytical Reporting
- Intelligent Alerting

---

## Current Implementation

Implemented components:

### Metadata Management Layer

- Metadata Models
- Metadata Extraction
- Metadata Export
- Metadata Query Engine
- Metadata Service Layer

### API Layer

EDIP exposes metadata through REST APIs:

GET /data-sources

GET /data-sources/{id}/datasets

GET /datasets/{id}/quality-rules


---

## Architecture Overview

Enterprise Data Sources

        |
        v

Database Connector Layer

        |
        v

Metadata Extraction Layer

        |
        v

Metadata Models

        |
        v

Metadata Query Layer

        |
        v

Metadata Service Layer

        |
        v

REST API Layer

        |
        v

Applications / Users


---

## Features

Current implemented capabilities:

- Database Connector
- Metadata Extraction
- Metadata Export
- Metadata Query Engine
- Metadata Service Layer
- REST API
- Metadata Discovery
- Dataset Discovery
- Data Quality Rule Discovery

---

## Technology Stack

- Python
- FastAPI
- SQL Server
- SQLAlchemy
- PyODBC
- Pydantic
- Git
- GitHub

---


## Metadata API Demo

EDIP provides REST APIs for accessing enterprise metadata.

The API layer exposes metadata information about data sources, datasets, and data quality rules.

### 1. Get Data Sources

Endpoint:

```http
GET /data-sources
```
Example Response:

```json
[
  {
    "id": 1,
    "name": "Enterprise ERP",
    "source_type": "Database",
    "environment": "Production"
  },
  {
    "id": 2,
    "name": "CRM Platform",
    "source_type": "API",
    "environment": "Production"
  }
]
```
### 2. Get Datasets by Data Source

Endpoint:
```http
GET /data-sources/{data_source_id}/datasets
``` 

Example:
```http
GET /data-sources/1/datasets
```
Example Response:
```json
[
  {
    "id": 1,
    "name": "Customer Master Data",
    "dataset_type": "Table",
    "status": "Active"
  },
  {
    "id": 2,
    "name": "Sales Transactions",
    "dataset_type": "Table",
    "status": "Active"
  }
]
``` 

### 3. Get Data Quality Rules

Endpoint:
```http
GET /datasets/{dataset_id}/quality-rules
```
Example:
```http
GET /datasets/1/quality-rules
```
Example Response:
```json
[
  {
    "name": "Customer ID Required",
    "rule_type": "Completeness",
    "severity": "Critical"
  },
  {
    "name": "Customer Name Required",
    "rule_type": "Completeness",
    "severity": "High"
  }
]
```
---

---

## Metadata Relationship

EDIP organizes enterprise metadata using the following hierarchy:

```text
DataSource
    |
    +---- Dataset
              |
              +---- Data Quality Rule
```

Example:

```text
Enterprise ERP
    |
    +---- Customer Master Data
              |
              +---- Customer ID Required
              +---- Customer Name Required
```
---

## Project Status

🚧 Project in Progress

Current focus:

- Metadata API Development
- Error Handling
- Logging
- Monitoring
- Data Quality Engine
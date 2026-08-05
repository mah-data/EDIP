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

## Project Status

🚧 Project in Progress

Current focus:

- Metadata API Development
- Error Handling
- Logging
- Monitoring
- Data Quality Engine
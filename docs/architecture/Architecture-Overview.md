\# EDIP Architecture Overview



\## Enterprise Data Intelligence Platform (EDIP)



EDIP is a generic enterprise data intelligence platform designed to manage enterprise data metadata, connections, datasets, and data quality rules.



The platform is designed to be independent from specific business domains and can support different types of enterprise data sources.



\---



\# Version 1 Architecture



EDIP Version 1 focuses on the metadata management core.



The main goal of Version 1 is to provide a foundation for managing:



\- Data Sources

\- Physical Connections

\- Datasets

\- Data Quality Rules



Future versions can extend the platform with additional capabilities such as:



\- Data Ingestion

\- Data Profiling

\- Analytics

\- Reporting

\- Alerting



\---



\# Core Components



\## 1. DataSource



DataSource represents a logical business source of data.



A DataSource identifies the business owner and source type.



Examples:



\- Enterprise Database

\- API Platform

\- File Repository



A DataSource can have multiple Connections.



\---



\## 2. Connection



Connection represents a physical connection to a DataSource.



A Connection contains technical information required to access a data source.



Examples:



\- SQL Server Connection

\- REST API Connection

\- File System Connection



One DataSource can have multiple Connections.



\---



\## 3. Dataset



Dataset represents a logical collection of data.



A Dataset belongs to one Connection.



Dataset stores information about:



\- Logical dataset name

\- Physical object name

\- Data format

\- Refresh method

\- Refresh frequency

\- Status



Examples:



\- Database Table

\- API Resource

\- CSV File

\- Data Stream



\---



\## 4. DataQualityRule



DataQualityRule stores validation rules used to evaluate Dataset quality.



Each rule belongs to one Dataset.



Rules define:



\- Rule category

\- Rule expression

\- Severity

\- Blocking behavior

\- Enable status



\---



\# Logical Data Model



DataSource



&#x20;   |

&#x20;   | 1 : N



Connection



&#x20;   |

&#x20;   | 1 : N



Dataset



&#x20;   |

&#x20;   | 1 : N



DataQualityRule





\---



\# Architecture Principles



\## Generic Design



EDIP is not limited to a specific industry or business domain.



\## Metadata Driven



The platform manages information about enterprise data assets.



\## Extensible Architecture



The architecture supports future expansion without changing the core model.



\---



\# Related ADR Documents



The following ADR documents describe important architecture decisions:



\- ADR-001 Project Repository Structure

\- ADR-002 DataSource Is A Business Source

\- ADR-003 DataSource Connection Relationship

\- ADR-004 Connection Architecture

\- ADR-005 Dataset Architecture

\- ADR-006 Data Quality Rule Engine

\- ADR-007 Naming Convention

\- ADR-008 Views Strategy



\---



\# Current Version



EDIP Version 1.0.0


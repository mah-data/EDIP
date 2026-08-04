from dataclasses import dataclass
from datetime import datetime


@dataclass
class DataSourceMetadata:
    id: int
    name: str
    source_type: str
    owner: str
    environment: str
    description: str
    created_date: datetime
    created_by: str


@dataclass
class ConnectionMetadata:
    id: int
    data_source_id: int
    name: str
    connection_type: str
    server: str
    database_name: str
    port: int
    authentication_type: str
    username: str
    environment: str
    timeout_seconds: int
    status: str
    description: str
    created_date: datetime
    created_by: str


@dataclass
class DatasetMetadata:
    id: int
    data_source_id: int
    name: str
    dataset_type: str
    location: str
    primary_key: str
    load_type: str
    frequency: str
    format_type: str
    status: str
    description: str
    created_date: datetime
    created_by: str


@dataclass
class DataQualityRuleMetadata:
    id: int
    dataset_id: int
    name: str
    rule_type: str
    rule_expression: str
    severity: str
    blocking: bool
    active: bool
    description: str
    created_date: datetime
    created_by: str
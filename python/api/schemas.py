from datetime import datetime

from pydantic import BaseModel


class DataSourceResponse(BaseModel):

    id: int
    name: str
    source_type: str
    owner: str
    environment: str
    description: str | None
    created_date: datetime
    created_by: str

class DatasetResponse(BaseModel):

    id: int
    connection_id: int
    name: str
    dataset_type: str
    location: str
    primary_key: str
    load_type: str
    frequency: str
    format_type: str
    status: str
    description: str | None
    created_date: datetime
    created_by: str

class QualityRuleResponse(BaseModel):

    id: int
    dataset_id: int
    name: str
    rule_type: str
    rule_expression: str
    severity: str
    blocking: bool
    active: bool
    description: str | None
    created_date: datetime
    created_by: str
from fastapi import FastAPI
from python.api.schemas import (DataSourceResponse,DatasetResponse,QualityRuleResponse)
from python.ingestion.database_connector import DatabaseConnector
from python.metadata.metadata_extractor import MetadataExtractor
from python.metadata.metadata_service import MetadataService


app = FastAPI(
    title="EDIP Metadata API",
    version="1.0.0"
)


def build_service():

    connector = DatabaseConnector(
        "EDIP SQL Server",
        (
            "mssql+pyodbc://sa:Mahtab5490@CEO/EDIP"
            "?driver=ODBC+Driver+17+for+SQL+Server"
        )
    )

    connector.connect()

    extractor = MetadataExtractor(connector)

    metadata = extractor.extract_all()

    return MetadataService(metadata)


@app.get(
    "/data-sources",
    response_model=list[DataSourceResponse]
)
def get_data_sources():

    service = build_service()

    sources = service.get_all_data_sources()

    return sources

@app.get(
    "/data-sources/{data_source_id}/datasets",
    response_model=list[DatasetResponse]
)
def get_datasets(data_source_id: int):

    service = build_service()

    datasets = service.get_datasets(
        data_source_id
    )

    return datasets

@app.get(
    "/datasets/{dataset_id}/quality-rules",
    response_model=list[QualityRuleResponse]
)
def get_quality_rules(dataset_id: int):

    service = build_service()

    rules = service.get_quality_rules(
        dataset_id
    )

    return rules
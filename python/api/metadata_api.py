from fastapi import FastAPI

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


@app.get("/data-sources")
def get_data_sources():

    service = build_service()

    sources = service.get_all_data_sources()

    return sources

@app.get("/data-sources/{data_source_id}/datasets")
def get_datasets(data_source_id: int):

    service = build_service()

    datasets = service.get_datasets(
        data_source_id
    )

    return datasets
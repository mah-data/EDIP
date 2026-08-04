from python.ingestion.database_connector import DatabaseConnector
from python.metadata.metadata_extractor import MetadataExtractor
from python.metadata.metadata_service import MetadataService


def test_metadata_service():

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

    service = MetadataService(metadata)

    source = service.get_data_source(
        "Enterprise ERP"
    )

    print("\n--- Data Source ---")
    print(source)

    datasets = service.get_datasets(
        source.id
    )

    print("\n--- Datasets ---")

    for dataset in datasets:
        print(dataset)

    connector.close()


if __name__ == "__main__":
    test_metadata_service()
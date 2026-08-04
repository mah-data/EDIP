from python.ingestion.database_connector import DatabaseConnector
from python.metadata.metadata_extractor import MetadataExtractor


def test_metadata_extractor():

    connector = DatabaseConnector(
        "EDIP SQL Server",
        (
            "mssql+pyodbc://sa:Mahtab5490@CEO/EDIP"
            "?driver=ODBC+Driver+17+for+SQL+Server"
        )
    )

    connector.connect()

    extractor = MetadataExtractor(connector)

    data_sources = extractor.get_data_sources()

    for row in data_sources:
        print(row)

    connector.close()


if __name__ == "__main__":
    test_metadata_extractor()


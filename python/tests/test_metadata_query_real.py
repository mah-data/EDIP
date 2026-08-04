from python.ingestion.database_connector import DatabaseConnector
from python.metadata.metadata_extractor import MetadataExtractor
from python.metadata.metadata_query import MetadataQuery


def test_metadata_query_real():

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

    query = MetadataQuery(metadata)

    result = query.find_data_source(
        "Enterprise ERP"
    )

    print("\n--- Search Result ---")
    print(result)

    connector.close()


if __name__ == "__main__":
    test_metadata_query_real()
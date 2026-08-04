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

    metadata = {
        "DataSource": extractor.get_data_sources(),
        "Connection": extractor.get_connections(),
        "Dataset": extractor.get_datasets(),
        "DataQualityRule": extractor.get_quality_rules()
    }

    for name, rows in metadata.items():

        print("\n---", name, "---")

        for row in rows:
            print(row)

    connector.close()


if __name__ == "__main__":
    test_metadata_extractor()
from python.ingestion.database_connector import DatabaseConnector
from python.metadata.metadata_extractor import MetadataExtractor
from python.pipeline.metadata_pipeline import MetadataPipeline


def test_metadata_pipeline():

    connector = DatabaseConnector(
        "EDIP SQL Server",
        (
            "mssql+pyodbc://sa:Mahtab5490@CEO/EDIP"
            "?driver=ODBC+Driver+17+for+SQL+Server"
        )
    )

    connector.connect()

    extractor = MetadataExtractor(connector)

    pipeline = MetadataPipeline(extractor)

    result = pipeline.run()

    for name, rows in result.items():
        print("\n---", name, "---")

        for row in rows:
            print(row)

    connector.close()


if __name__ == "__main__":
    test_metadata_pipeline()


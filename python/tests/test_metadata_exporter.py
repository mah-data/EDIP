from python.ingestion.database_connector import DatabaseConnector
from python.metadata.metadata_extractor import MetadataExtractor
from python.pipeline.metadata_pipeline import MetadataPipeline
from python.metadata.metadata_exporter import MetadataExporter


def test_metadata_exporter():

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

    metadata = pipeline.run()

    exporter = MetadataExporter()

    file = exporter.export_to_json(
        metadata,
        "metadata_output.json"
    )

    print("Created:", file)

    connector.close()


if __name__ == "__main__":
    test_metadata_exporter()
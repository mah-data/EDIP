from python.ingestion.database_connector import DatabaseConnector
from python.metadata.models import (
    DataSourceMetadata,
    ConnectionMetadata,
    DatasetMetadata,
    DataQualityRuleMetadata
)


class MetadataExtractor:

    def __init__(self, connector: DatabaseConnector):
        self.connector = connector

    def get_data_sources(self):

        rows = self.connector.extract(
            """
            SELECT *
            FROM dbo.DataSource
            """
        )

        return [
            DataSourceMetadata(
                id=row[0],
                name=row[1],
                source_type=row[2],
                owner=row[3],
                environment=row[4],
                description=row[5],
                created_date=row[6],
                created_by=row[7]
            )
            for row in rows
        ]

    def get_connections(self):

        rows = self.connector.extract(
            """
            SELECT *
            FROM dbo.Connection
            """
        )

        return [
            ConnectionMetadata(
                id=row[0],
                data_source_id=row[1],
                name=row[2],
                connection_type=row[3],
                server=row[4],
                database_name=row[5],
                port=row[6],
                authentication_type=row[7],
                username=row[8],
                environment=row[9],
                timeout_seconds=row[10],
                status=row[11],
                description=row[12],
                created_date=row[13],
                created_by=row[14]
            )
            for row in rows
        ]

    def get_datasets(self):

        rows = self.connector.extract(
            """
            SELECT *
            FROM dbo.Dataset
            """
        )

        return [
            DatasetMetadata(
                id=row[0],
                data_source_id=row[1],
                name=row[2],
                dataset_type=row[3],
                location=row[4],
                primary_key=row[5],
                load_type=row[6],
                frequency=row[7],
                format_type=row[8],
                status=row[9],
                description=row[10],
                created_date=row[11],
                created_by=row[12]
            )
            for row in rows
        ]

    def get_quality_rules(self):

        rows = self.connector.extract(
            """
            SELECT *
            FROM dbo.DataQualityRule
            """
        )

        return [
            DataQualityRuleMetadata(
                id=row[0],
                dataset_id=row[1],
                name=row[2],
                rule_type=row[3],
                rule_expression=row[4],
                severity=row[5],
                blocking=row[6],
                active=row[7],
                description=row[8],
                created_date=row[9],
                created_by=row[10]
            )
            for row in rows
        ]

    def extract_all(self):

        return {
            "data_sources": self.get_data_sources(),
            "connections": self.get_connections(),
            "datasets": self.get_datasets(),
            "quality_rules": self.get_quality_rules()
        }
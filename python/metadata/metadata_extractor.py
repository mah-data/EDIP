from python.ingestion.database_connector import DatabaseConnector

class MetadataExtractor:

    def __init__(self, connector: DatabaseConnector):
        self.connector = connector

    def get_data_sources(self):

        query = """
        SELECT *
        FROM dbo.DataSource
        """

        return self.connector.extract(query)

    def get_connections(self):

        query = """
        SELECT *
        FROM dbo.Connection
        """

        return self.connector.extract(query)

    def get_datasets(self):

        query = """
        SELECT *
        FROM dbo.Dataset
        """

        return self.connector.extract(query)

    def get_quality_rules(self):

        query = """
        SELECT *
        FROM dbo.DataQualityRule
        """

        return self.connector.extract(query)
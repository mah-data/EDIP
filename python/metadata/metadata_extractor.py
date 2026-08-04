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


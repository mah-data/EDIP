from sqlalchemy import create_engine, text
from python.ingestion.base_connector import BaseConnector


class DatabaseConnector(BaseConnector):

    def __init__(self, source_name, connection_string):
        super().__init__(source_name)
        self.connection_string = connection_string
        self.engine = None

    def connect(self):
        self.engine = create_engine(self.connection_string)
        return True

    def extract(self, query):
        with self.engine.connect() as connection:
            result = connection.execute(text(query))
            return result.fetchall()

    def close(self):
        if self.engine:
            self.engine.dispose()
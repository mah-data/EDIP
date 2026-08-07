from sqlalchemy import create_engine
from python.ingestion.base_connector import BaseConnector
from python.common.exceptions import DatabaseConnectionError


class DatabaseConnector(BaseConnector):

    def __init__(self, source_name, connection_string):
        super().__init__(source_name)
        self.connection_string = connection_string
        self.engine = None

    def connect(self):

        try:
            self.engine = create_engine(
                self.connection_string
            )

            return True

        except Exception as e:

            raise DatabaseConnectionError(
                f"Unable to connect to database: {e}"
            )


    def extract(self, query):

        raw_connection = None

        try:

            raw_connection = self.engine.raw_connection()

            cursor = raw_connection.cursor()

            cursor.execute(query)

            rows = cursor.fetchall()

            return rows


        except Exception as e:

            raise DatabaseConnectionError(
                f"Query execution failed: {e}"
            )


        finally:

            if raw_connection:
                raw_connection.close()


    def close(self):

        if self.engine:
            self.engine.dispose()
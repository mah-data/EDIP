from python.ingestion.database_connector import DatabaseConnector


def test_database_connector():

    connector = DatabaseConnector(
        "EDIP SQL Server",
        (
            "mssql+pyodbc://sa:Mahtab5490@CEO/EDIP"
            "?driver=ODBC+Driver+17+for+SQL+Server"
        )
    )

    connector.connect()

    queries = {
        "DataSource": "SELECT * FROM dbo.DataSource",
        "Connection": "SELECT * FROM dbo.Connection",
        "Dataset": "SELECT * FROM dbo.Dataset",
        "DataQualityRule": "SELECT * FROM dbo.DataQualityRule"
    }

    for name, query in queries.items():

        print("\n---", name, "---")

        data = connector.extract(query)

        for row in data:
            print(row)

    connector.close()


if __name__ == "__main__":
    test_database_connector()


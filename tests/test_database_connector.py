from ingestion.database_connector import DatabaseConnector


def test_database_connector():

    connector = DatabaseConnector(
        "EDIP SQLite Demo",
        "sqlite:///../sample-data/edip_demo.db"
    )

    connector.connect()

    data = connector.extract(
        "SELECT * FROM data_source"
    )

    assert len(data) == 3

    print("DatabaseConnector test passed")
    print(data)

    connector.close()


if __name__ == "__main__":
    test_database_connector()
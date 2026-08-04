from python.ingestion.file_connector import FileConnector

def main():
    connector = FileConnector(
        source_name="Sample CSV",
        file_path="../sample-data/sample.csv"
    )

    connector.connect()

    data = connector.extract()

    print(data.head())

    connector.close()


if __name__ == "__main__":
    main()

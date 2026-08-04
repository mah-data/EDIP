from python.ingestion.api_connector import APIConnector


def main():
    connector = APIConnector(
        "JSON API Demo",
        "https://jsonplaceholder.typicode.com/users"
    )

    connector.connect()

    data = connector.extract()

    for item in data[:3]:
        print(item)

    connector.close()


if __name__ == "__main__":
    main()



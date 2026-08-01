from ingestion.api_connector import APIConnector


connector = APIConnector(
    "JSON API Demo",
    "https://jsonplaceholder.typicode.com/users"
)

data = connector.extract()

for item in data[:3]:
    print(item)

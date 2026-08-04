import requests
from python.ingestion.base_connector import BaseConnector


class APIConnector(BaseConnector):

    def __init__(self, source_name, url):
        super().__init__(source_name)
        self.url = url

    def connect(self):
        return True

    def extract(self):
        response = requests.get(self.url)
        response.raise_for_status()
        return response.json()

    def close(self):
        pass


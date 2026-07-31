import pandas as pd
from base_connector import BaseConnector


class FileConnector(BaseConnector):
    def __init__(self, source_name,file_path):
        super().__init__(source_name)
        self.file_path = file_path

    def connect(self):
        return True

    def extract(self):
        return pd.read_csv(self.file_path)

    def close(self):
        pass
from abc import ABC, abstractmethod


class BaseConnector(ABC):
    """
    Abstract base class for all data source connectors.
    """

    def __init__(self, source_name):
        self.source_name = source_name

    @abstractmethod
    def connect(self):
        pass

    @abstractmethod
    def extract(self):
        pass

    @abstractmethod
    def close(self):
        pass


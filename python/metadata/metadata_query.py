class MetadataQuery:

    def __init__(self, metadata):
        self.metadata = metadata

    def find_data_source(self, name):

        sources = self.metadata.get(
            "data_sources",
            []
        )

        for source in sources:
            if source.name == name:
                return source

        return None


    def get_all_data_sources(self):

        return self.metadata.get(
            "data_sources",
            []
        )


    def get_all_datasets(self):

        return self.metadata.get(
            "datasets",
            []
        )
from python.metadata.metadata_query import MetadataQuery


class MetadataService:

    def __init__(self, metadata):

        self.query = MetadataQuery(metadata)


    def get_data_source(self, name):

        return self.query.find_data_source(name)


    def get_all_data_sources(self):

        return self.query.get_all_data_sources()


    def get_datasets(self, data_source_id):

        return self.query.find_datasets_by_source(
            data_source_id
        )


    def get_quality_rules(self, dataset_id):

        return self.query.find_quality_rules_by_dataset(
            dataset_id
        )
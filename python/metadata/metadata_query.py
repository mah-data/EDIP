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
    
    def find_datasets_by_source(self, data_source_id):

        connections = self.metadata.get(
            "connetions",
            []
        )

        datasets = self.metadata.get(
            "datasets",
            []
        )

        source_connections = [
            connection.id
            for connection in connections 
            if connection.data_source_id == data_source_id
        ]

        return [
            dataset
            for dataset in datasets
            if dataset.connection_id in source_connections
        ] 
        
        

    def find_quality_rules_by_dataset(self, dataset_id):

        rules = self.metadata.get(
            "quality_rules",
            []
        )

        return [
            rule
            for rule in rules
            if rule.dataset_id == dataset_id
        ]

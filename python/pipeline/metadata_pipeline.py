from python.metadata.metadata_extractor import MetadataExtractor


class MetadataPipeline:

    def __init__(self, extractor: MetadataExtractor):
        self.extractor = extractor

    def run(self):

        metadata = {
            "DataSource": self.extractor.get_data_sources(),
            "Connection": self.extractor.get_connections(),
            "Dataset": self.extractor.get_datasets(),
            "DataQualityRule": self.extractor.get_quality_rules()
        }

        return metadata


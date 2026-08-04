import json
from dataclasses import asdict


class MetadataExporter:

    def export_to_json(self, metadata, file_path):

        output = {}

        for name, items in metadata.items():
            output[name] = [
                asdict(item)
                for item in items
            ]

        with open(
            file_path,
            "w",
            encoding="utf-8"
        ) as file:

            json.dump(
                output,
                file,
                indent=4,
                default=str
            )

        return file_path
from python.metadata.metadata_query import MetadataQuery
from python.metadata.models import DataSourceMetadata


def test_metadata_query():

    metadata = {

        "data_sources": [

            DataSourceMetadata(
                id=1,
                name="Enterprise ERP",
                source_type="Database",
                owner="Business Unit",
                environment="Production",
                description="ERP database",
                created_date=None,
                created_by="System"
            ),

            DataSourceMetadata(
                id=2,
                name="CRM Platform",
                source_type="API",
                owner="Sales",
                environment="Production",
                description="CRM API",
                created_date=None,
                created_by="System"
            )
        ]
    }


    query = MetadataQuery(metadata)

    result = query.find_data_source(
        "Enterprise ERP"
    )

    print(result)


if __name__ == "__main__":
    test_metadata_query()
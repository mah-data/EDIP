from sqlalchemy import create_engine, text

engine = create_engine("sqlite:///../sample-data/edip_demo.db")

with engine.connect() as conn:
    result = conn.execute(
        text("SELECT * FROM data_source")
    )

    for row in result:
        print(row)
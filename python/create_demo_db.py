from sqlalchemy import create_engine, text


engine = create_engine(
    "sqlite:///../sample-data/edip_demo.db"
)

with engine.connect() as conn:
    conn.execute(text("""
        CREATE TABLE IF NOT EXISTS data_source (
            id INTEGER PRIMARY KEY,
            name TEXT,
            value INTEGER
        )
    """))

    conn.execute(text("""
        INSERT INTO data_source (name, value)
        VALUES
        ('source_db_a', 500),
        ('source_db_b', 600),
        ('source_db_c', 700)
    """))

    conn.commit()

print("Demo database created")
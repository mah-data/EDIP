from sqlalchemy import create_engine, text


connection_string = (
    "mssql+pyodbc://sa:Mahtab5490@CEO/EDIP"
    "?driver=ODBC+Driver+17+for+SQL+Server"
)


engine = create_engine(connection_string)


with engine.connect() as connection:
    result = connection.execute(
        text("SELECT DB_NAME()")
    )

    print(result.fetchone())

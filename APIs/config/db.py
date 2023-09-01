from sqlalchemy import create_engine, MetaData

user = "admin"
password = "Genius2008"

engine = create_engine(f"mysql+pymysql://{user}:{password}@database-farmacia.cccupuslvvw9.us-east-2.rds.amazonaws.com/farmacia")

meta_data = MetaData()
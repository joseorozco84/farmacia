from sqlalchemy import create_engine, MetaData

user = "u853169718_joseorozco"
password = "yZHW]>&Rz>8"

engine = create_engine(f"mysql+pymysql://{user}:{password}@srv995.hstgr.io/u853169718_farmacia", pool_pre_ping=True, pool_recycle=3600)

meta_data = MetaData()
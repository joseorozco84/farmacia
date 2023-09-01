from sqlalchemy import Table, Column
from sqlalchemy.sql.sqltypes import Integer, String, Boolean
from config.db import engine, meta_data

productos = Table("producto", meta_data,
              Column("id_producto", Integer, primary_key=True),
              Column("nombre", String(255), nullable=False),
              Column("precio", String(255), nullable=False),
              Column("farmaco", String(255), nullable=True),
              Column("id_categoria", Integer, nullable=False),
              Column("id_proveedor", Integer, nullable=False),
              Column("activo", Boolean, nullable=False)
              )

meta_data.create_all(engine)
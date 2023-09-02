from fastapi import APIRouter, Response
from schema.user_schema import UserSchema, UpdateUserSchema
from starlette.status import HTTP_201_CREATED, HTTP_204_NO_CONTENT, HTTP_200_OK
from schema.producto_schema import ProductoSchema, UpdateProductoSchema
from config.db import engine
from model.users import users
from model.productos import productos
from typing import List

user = APIRouter()
producto = APIRouter()

# raiz
@user.get("/", tags=["index"])
def root():
    return {"message": "API de farmacia - FastAPI"}

# ver usuarios
@user.get("/api/user", response_model=List[UserSchema], tags=["usuario"])
def get_users():
    with engine.begin() as conn:
        result = conn.execute(users.select()).fetchall()
        return result

# crear usuario
@user.post("/api/user", tags=["usuario"])
def create_user(data_user: UserSchema):
    with engine.begin() as conn:
        new_user = data_user.model_dump()
        conn.execute(users.insert().values(new_user))
        return Response(status_code=HTTP_201_CREATED)

# actualizar usuario
@user.patch("/api/user/{id}", response_model=UpdateUserSchema, tags=["usuario"])
def update_user(data_update: UpdateUserSchema, id: int):
    with engine.begin() as conn:
        conn.execute(users.update().values(data_update.model_dump(exclude_unset=True)).where(users.c.id == id))
        result = conn.execute(users.select().where(users.c.id == id)).first()
        print(result)
        return Response(status_code=HTTP_200_OK)
    
# eliminar usuario
@user.delete("/api/user/{id}", response_model=UserSchema, tags=["usuario"])
def delete_user(id: int):
    with engine.begin() as conn:
        conn.execute(users.delete().where(users.c.id == id))
        return Response(status_code=HTTP_204_NO_CONTENT)

# ver productos
@producto.get("/api/producto", response_model=List[ProductoSchema], tags=["producto"])
def get_producto():
    with engine.begin() as conn:
        result = conn.execute(productos.select()).fetchall()
        return result
    
# ver producto por ID
@producto.get("/api/producto/{id_producto}", response_model=ProductoSchema, tags=["producto"])
def get_producto_by_id(id_producto: int):
    with engine.begin() as conn:
        result = conn.execute(productos.select().where(productos.c.id_producto == id_producto)).first()
        return result
    
# crear producto
@producto.post("/api/producto", tags=["producto"])
def create_producto(data_producto: ProductoSchema):
    with engine.begin() as conn:
        new_prod = data_producto.model_dump()
        conn.execute(productos.insert().values(new_prod))
    return Response(status_code=HTTP_201_CREATED)

# actualizar producto
@producto.patch("/api/producto/{id_producto}", response_model=UpdateProductoSchema,tags=["producto"])
def update_producto_by_id(data_producto: UpdateProductoSchema, id_producto: int):
    with engine.begin() as conn:
        conn.execute(productos.update().values(data_producto.model_dump(exclude_unset=True)).where(productos.c.id_producto == id_producto))
        # result = conn.execute(productos.select().where(productos.c.id_producto == id_producto)).first()
        return Response(status_code=HTTP_200_OK)

# eliminar producto
@producto.delete("/api/producto/{id_producto}", response_model=ProductoSchema, tags=["producto"])
def delete_producto_by_id(id_producto: int):
    with engine.begin() as conn:
        conn.execute(productos.delete().where(productos.c.id_producto == id_producto))
        return Response(status_code=HTTP_204_NO_CONTENT)

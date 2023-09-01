from fastapi import FastAPI
from router.router import user, producto


app = FastAPI(
    title = "Farmacia APIs",
    description = """
    APIs de la base de datos de farmacia.
    CRUD Productos:
    * Se pueden leer todos los productos de la db 
    * Se puede leer un producto (por id de producto)
    * Se puede insertar un nuevo producto
    * Se puede actualizar un producto
    * Se puede eliminar un producto
    """
    )

app.include_router(producto)
app.include_router(user)
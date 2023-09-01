from pydantic import BaseModel
from typing import Optional

class ProductoSchema(BaseModel):
    id_producto: Optional[int]
    nombre: str
    precio: float
    farmaco: Optional[str]
    id_categoria: int
    id_proveedor: Optional[int]
    activo: bool

class UpdateProductoSchema(BaseModel):
    nombre: str = None
    precio: float = None
    farmaco: str = None
    id_categoria: int = None
    id_proveedor: int = None
    activo: bool = None
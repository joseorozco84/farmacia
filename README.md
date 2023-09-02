# Base de datos de Farmacia con MySQL

El modelo de negocios será el de una cadena de farmacias con varias sucursales:
Esta temática implica la creación de una base de datos para gestionar la venta de productos y servicios de una farmacia, lo que incluye información sobre medicamentos, productos de belleza, servicios, precios, clientes, empleados, proveedores, niveles de stock, entre otros. Las compras se pueden realizar tanto presencial en cualquiera de las sucursales, como vía web.

Leer la [documentación](https://github.com/joseorozco84/farmacia/blob/main/Documentacion/Documentacion.pdf) para información ampliada.

## Estructura de tablas:
##### Creado con Draw.io
![image](https://github.com/joseorozco84/farmacia/blob/main/Documentacion/DER%20Esquematico%20Farmacia.svg)


## Uso de scripts:
1. Instalar [MySQL Community Server 8.0](https://dev.mysql.com/downloads/mysql/)
2. Ejecutar [script de creación](https://github.com/joseorozco84/farmacia/blob/main/Scripts%20Mysql%20DB/Script%20creacion%20DB.sql) de tablas, vistas, funciones, etc
3. Ejecutar [script de inserción](https://github.com/joseorozco84/farmacia/blob/main/Scripts%20Mysql%20DB/Script%20insercion%20Datos.sql) de datos ficticios

## Algunas consultas de ejemplo:

##### Consultas basadas en vistas creadas:
```sql
SELECT * FROM facturacion_total_vw;
```
```sql
SELECT * FROM detalle_facturacion_vw;
```
##### Consulta para conocer los productos a la venta y sus categorias:
```sql
SELECT nombre, c.tipo
FROM producto AS p
INNER JOIN
    categoria AS c ON p.id_categoria = c.id_categoria;
```
##### Consulta para conocer la cantidad de ventas por categoria de productos:
```sql
SELECT c.tipo AS categoria, SUM(v.cantidad) AS cantidad_ventas
FROM venta AS v
INNER JOIN
    producto AS p ON v.id_producto = p.id_producto
INNER JOIN
    categoria AS c ON p.id_categoria = c.id_categoria
GROUP BY c.tipo
ORDER BY cantidad_ventas DESC;	
 ```


## Business Intelligence
##### Gráficos creados con PowerBI
![image](https://github.com/joseorozco84/farmacia/assets/81333025/5a088a16-ea42-4184-963c-0766f5c8c6c4)



## Credenciales de usuario visitante en Servidor AWS:
##### Se podrá conectar a la base de datos usando *MySQL Workbench 8.0* o desde la linea de comandos.
- host: *database-farmacia.cccupuslvvw9.us-east-2.rds.amazonaws.com*
- user: *visitante*
- password: *Visitante123*



## Endpoints de la API
La API de la farmacia proporciona acceso a información sobre productos, clientes y ventas.\
El único metodo habilitado para el usuario visitante es el método GET.

### Lista de Endpoints
##### API Endpoints creados con [Python](https://www.python.org/) :snake: + framework [**FastAPI**](https://fastapi.tiangolo.com/) :zap:

**Obtener lista de productos**
  - Método: GET
  - URL: /api/producto
  - Descripción: Este endpoint devuelve una lista de todos los productos disponibles.
 
**Obtener un producto**
  - Método: GET
  - URL: /api/producto/id_producto
  - Descripción: Este endpoint devuelve un producto segun su id_producto

##### Ejemplo:
```json
{
    "id_producto": 1,
    "nombre": "Paracetamol 500mg",
    "precio": 5.99,
    "farmaco": "Acetaminofén",
    "id_categoria": 1,
    "id_proveedor": 1,
    "activo": true
}
```

**Obtener lista de usuarios**
  - Método: GET
  - URL: /api/user
  - Descripción: Este endpoint devuelve una lista de todos los usuarios disponibles.

##### Ejemplo:
```json
[
    {
        "id": 1,
        "name": "Joe Dhon",
        "username": "usuario1",
        "password": "secretpassword"
    },
    {
        "id": 2,
        "name": "John Doe",
        "username": "usuario2",
        "password": "secretpassword"
    }
]
```

 
**Documentación de la API**
  - URL: /docs
  - Descripción: Este endpoint contiene la documentación interactiva en [Swagger UI](https://swagger.io/tools/swagger-ui/) generada por FastAPI :zap:


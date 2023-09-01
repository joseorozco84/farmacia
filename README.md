# Base de datos de Farmacia con MySQL

El modelo de negocios será el de una cadena de farmacias con varias sucursales:
Esta temática implica la creación de una base de datos para gestionar la venta de productos y servicios de una farmacia, lo que incluye información sobre medicamentos, productos de belleza, servicios, precios, clientes, empleados, proveedores, niveles de stock, entre otros. Las compras se pueden realizar tanto presencial en cualquiera de las sucursales, como vía web.

Leer la [documentación](https://github.com/joseorozco84/farmacia/blob/main/Documentacion/Documentacion.pdf) para información ampliada.

## Estructura de tablas:

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
![image]()


## Credenciales de usuario visitante en Servidor AWS:
- host: *database-farmacia.cccupuslvvw9.us-east-2.rds.amazonaws.com*
- user: *visitante*
- password: *Visitante123*

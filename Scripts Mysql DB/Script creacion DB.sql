# Curso SQL
# Entrega final
# Profesor: César Aracena

# SCRIPT DE CREACION DE BASE DE DATOS, TABLAS, VISTAS, STORED PROCEDURES, FUNCIONES Y TRIGGERS

CREATE DATABASE farmacia;

USE farmacia;

########################################################
### 					TABLAS					     ###
########################################################

#1 provincia
CREATE TABLE IF NOT EXISTS farmacia.provincia (
	id_provincia INT AUTO_INCREMENT,
    provincia VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_provincia)
);

#2 genero
CREATE TABLE IF NOT EXISTS farmacia.genero (
	id_genero INT AUTO_INCREMENT,
    genero VARCHAR(20),
    PRIMARY KEY (id_genero)
);

#3 cliente
CREATE TABLE IF NOT EXISTS farmacia.cliente (
	id_cliente INT AUTO_INCREMENT,
	nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    nacimiento DATE NOT NULL,
    id_genero INT NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefono VARCHAR(30) NOT NULL,
    direccion VARCHAR(300) NOT NULL,
    id_provincia INT NOT NULL,
    PRIMARY KEY (id_cliente),
    INDEX nombre (nombre, apellido),
	UNIQUE INDEX (email),
    CONSTRAINT fk_cliente_genero FOREIGN KEY (id_genero) REFERENCES genero (id_genero) ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT fk_cliente_provincia FOREIGN KEY (id_provincia) REFERENCES provincia (id_provincia) ON DELETE RESTRICT ON UPDATE CASCADE
);

#4 sucursal
CREATE TABLE IF NOT EXISTS farmacia.sucursal (
	id_sucursal INT AUTO_INCREMENT,
    email VARCHAR(100) NOT NULL,
    telefono VARCHAR(30) NOT NULL,
    direccion VARCHAR(300) NOT NULL,
	id_provincia INT NOT NULL,
    PRIMARY KEY (id_sucursal),
    UNIQUE INDEX (email),
    CONSTRAINT fk_sucursal_provincia FOREIGN KEY (id_provincia) REFERENCES provincia (id_provincia) ON DELETE RESTRICT ON UPDATE CASCADE
);

#5 empleado
CREATE TABLE IF NOT EXISTS farmacia.empleado (
	id_empleado INT AUTO_INCREMENT,
	nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    nacimiento DATE NOT NULL,
    id_genero INT NOT NULL,
    inicio DATE NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefono VARCHAR(30) NOT NULL,
    direccion VARCHAR(300) NOT NULL,
	id_provincia INT NOT NULL,
    activo TINYINT DEFAULT 1,
    PRIMARY KEY (id_empleado),
    INDEX nombre (nombre, apellido),
    UNIQUE INDEX (email),
    CONSTRAINT fk_empleado_genero FOREIGN KEY (id_genero) REFERENCES genero (id_genero) ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT fk_empleado_provincia FOREIGN KEY (id_provincia) REFERENCES provincia (id_provincia) ON DELETE RESTRICT ON UPDATE CASCADE
);

#6 compra_tipo
CREATE TABLE IF NOT EXISTS farmacia.compra (
	id_compra INT AUTO_INCREMENT,
    tipo VARCHAR(20) NOT NULL,
    PRIMARY KEY (id_compra)
);

#7 pago_tipo
CREATE TABLE IF NOT EXISTS farmacia.pago (
	id_pago INT AUTO_INCREMENT,
    tipo VARCHAR(20) NOT NULL,
    PRIMARY KEY (id_pago)
);

#8 factura
CREATE TABLE IF NOT EXISTS farmacia.factura (
	id_factura INT AUTO_INCREMENT,
    fecha DATE DEFAULT (CURRENT_DATE()),
    hora TIME DEFAULT (CURRENT_TIME()),
    precio_bruto DECIMAL(11,2) DEFAULT 0,
    impuesto DECIMAL(5,2) DEFAULT 0,
    total DECIMAL(11,2) DEFAULT 0,
    id_empleado INT NOT NULL,
    id_cliente INT NOT NULL,
    id_pago INT NOT NULL,
    id_compra INT NOT NULL,
    id_sucursal INT NOT NULL,
    PRIMARY KEY (id_factura),
    INDEX (fecha),
    CONSTRAINT fk_factura_cliente FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente) ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT fk_factura_empleado FOREIGN KEY (id_empleado) REFERENCES empleado (id_empleado) ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT fk_factura_pago FOREIGN KEY (id_pago) REFERENCES pago (id_pago) ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT fk_factura_compra FOREIGN KEY (id_compra) REFERENCES compra (id_compra) ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT fk_factura_sucursal FOREIGN KEY (id_sucursal) REFERENCES sucursal (id_sucursal) ON DELETE RESTRICT ON UPDATE CASCADE
);

#9 categoria_producto
CREATE TABLE IF NOT EXISTS farmacia.categoria (
	id_categoria INT AUTO_INCREMENT,
    tipo VARCHAR(20) NOT NULL,
    PRIMARY KEY (id_categoria)
);

#10 proveedor
CREATE TABLE IF NOT EXISTS farmacia.proveedor (
	id_proveedor INT AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefono VARCHAR(30) NOT NULL,
    direccion VARCHAR(300) NOT NULL,
    id_provincia INT NOT NULL,
    PRIMARY KEY (id_proveedor),
	INDEX nombre (nombre, apellido),
    UNIQUE INDEX (email),
    CONSTRAINT fk_proveedor_provincia FOREIGN KEY (id_provincia) REFERENCES provincia (id_provincia) ON DELETE RESTRICT ON UPDATE CASCADE
);

#11 producto
CREATE TABLE IF NOT EXISTS farmacia.producto (
	id_producto INT AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    precio DECIMAL(11,2) DEFAULT 0,
    farmaco VARCHAR(100) DEFAULT NULL,
    id_categoria INT NOT NULL,
    id_proveedor INT,
	activo TINYINT DEFAULT 1,
	PRIMARY KEY (id_producto),
    CONSTRAINT fk_producto_categoria FOREIGN KEY (id_categoria) REFERENCES categoria (id_categoria) ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT fk_producto_proveedor FOREIGN KEY (id_proveedor) REFERENCES proveedor (id_proveedor) ON DELETE RESTRICT ON UPDATE CASCADE
);

#12 detalle_venta
CREATE TABLE IF NOT EXISTS farmacia.venta (
	id_venta INT AUTO_INCREMENT,
    id_factura INT NOT NULL,
    id_producto INT NOT NULL,
    cantidad INT DEFAULT 1,
    precio DECIMAL(11,2) DEFAULT 0,
    subtotal DECIMAL(11,2),
    PRIMARY KEY (id_venta),
    CONSTRAINT fk_venta_factura FOREIGN KEY (id_factura) REFERENCES factura (id_factura) ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT fk_venta_producto FOREIGN KEY (id_producto) REFERENCES producto (id_producto) ON DELETE RESTRICT ON UPDATE CASCADE
);

#13 stock
CREATE TABLE IF NOT EXISTS farmacia.stock (
	id_stock INT AUTO_INCREMENT,
    cantidad INT DEFAULT 0,
    stock_min INT DEFAULT 0,
    stock_max INT DEFAULT 0,
    id_producto INT NOT NULL,
    PRIMARY KEY (id_stock),
    CONSTRAINT fk_stock_producto FOREIGN KEY (id_producto) REFERENCES producto (id_producto) ON DELETE RESTRICT ON UPDATE CASCADE
);

#14 salario
CREATE TABLE IF NOT EXISTS farmacia.salario (
	id_salario INT AUTO_INCREMENT,
    id_empleado INT NOT NULL,
    fecha DATE NOT NULL,
    monto DECIMAL(11,2) DEFAULT 0,
    PRIMARY KEY (id_salario),
    CONSTRAINT fk_salario_empleado FOREIGN KEY (id_empleado) REFERENCES empleado (id_empleado) ON DELETE RESTRICT ON UPDATE CASCADE
);

#15 lote
CREATE TABLE IF NOT EXISTS farmacia.lote (
	id_lote INT AUTO_INCREMENT,
    id_producto INT NOT NULL,
    cantidad INT DEFAULT 1,
    vencimiento DATE,
    PRIMARY KEY (id_lote),
    CONSTRAINT fk_lote_producto FOREIGN KEY (id_producto) REFERENCES producto (id_producto) ON DELETE RESTRICT ON UPDATE CASCADE
);

#16 registro
CREATE TABLE IF NOT EXISTS farmacia.registro (
	id_registro INT AUTO_INCREMENT,
    id_empleado INT NOT NULL,
    id_sucursal INT NOT NULL,
    entrada DATETIME NOT NULL,
    salida DATETIME,
    PRIMARY KEY (id_registro),
    CONSTRAINT fk_registrao_empleado FOREIGN KEY (id_empleado) REFERENCES empleado (id_empleado) ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT fk_registro_sucursal FOREIGN KEY (id_sucursal) REFERENCES sucursal (id_sucursal) ON DELETE RESTRICT ON UPDATE CASCADE
);

#17 venta_tmp
CREATE TABLE IF NOT EXISTS farmacia.venta_tmp(
	id_venta_tmp INT AUTO_INCREMENT,
    id_empleado INT NOT NULL,
    id_producto INT NOT NULL,
    cantidad INT NOT NULL,
	subtotal DECIMAL(11,2),
    nuevo_stock INT,
    PRIMARY KEY (id_venta_tmp)
);

#18 log_nuevo_producto
CREATE TABLE IF NOT EXISTS farmacia.log_nuevo_producto(
	id_log INT AUTO_INCREMENT,
    id_producto INT NOT NULL,
    fecha DATETIME NOT NULL,
    usuario VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_log)
);

#19 log_precios
CREATE TABLE IF NOT EXISTS farmacia.log_precios(
	id_log INT AUTO_INCREMENT,
    id_producto INT NOT NULL,
    precio_anterior DEC(11,2) NOT NULL,
    precio_nuevo DEC(11,2) NOT NULL,
    fecha DATETIME NOT NULL,
    usuario VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_log)
);

#21 log_cambio_stock
CREATE TABLE IF NOT EXISTS farmacia.log_cambio_stock(
	id_log INT AUTO_INCREMENT,
    id_producto INT NOT NULL,
    fecha DATETIME NOT NULL,
    usuario VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_log)
);

#20 log_nueva_factura
CREATE TABLE IF NOT EXISTS farmacia.log_nueva_factura(
	id_log INT AUTO_INCREMENT,
    id_factura INT NOT NULL,
    fecha DATETIME NOT NULL,
    total DEC(11,2) NOT NULL,
    usuario VARCHAR(50),
    PRIMARY KEY (id_log)
);

########################################################
### 					VISTAS					     ###
########################################################

USE farmacia;

#1 Vista para conocer los productos de la base de datos y sus categorias
CREATE OR REPLACE VIEW categorias_productos_vw AS
	SELECT nombre
		, c.tipo
	FROM producto AS p
    INNER JOIN
		categoria AS c ON p.id_categoria = c.id_categoria
	;
    
#2 Vista para saber la cantidad de clientes por genero
CREATE OR REPLACE VIEW genero_cantidad_vw AS
	SELECT genero
		, COUNT(c.id_genero) AS cantidad
	FROM cliente AS c
	INNER JOIN genero AS g ON c.id_genero = g.id_genero
	GROUP BY c.id_genero
	;
    
#3 Vista para saber cuales lotes de productos vencen dentro de los proximos 15 dias o menos, ordenados de forma ascendente
CREATE OR REPLACE VIEW lotes_vencimientos_vw AS
	SELECT l.id_lote
		, p.nombre AS producto
		, l.vencimiento
	FROM lote AS l
	INNER JOIN
		producto AS p ON l.id_producto = p.id_producto
	WHERE vencimiento <= DATE_ADD(NOW(), INTERVAL 30 DAY)
	ORDER BY l.vencimiento ASC
	;

#4 Vista para conocer el sueldo promedio de cada empleado, ordenado de forma descendente
CREATE OR REPLACE VIEW sueldos_empleados_vw AS
	SELECT CONCAT(e.nombre, ' ', e.apellido) AS nombre
		, AVG(s.monto) AS sueldo_promedio
	FROM empleado as e
	INNER JOIN 
		salario as s ON e.id_empleado = s.id_empleado
	GROUP BY CONCAT(e.nombre, ' ', e.apellido)
    ORDER BY sueldo_promedio DESC
	;

#5 Vista para conocer la cantidad de ventas por categoria de productos
CREATE OR REPLACE VIEW ventas_categoria_vw AS
	SELECT c.tipo AS categoria
		, SUM(v.cantidad) AS cantidad_ventas
	FROM venta AS v
	INNER JOIN
		producto AS p ON v.id_producto = p.id_producto
	INNER JOIN
		categoria AS c ON p.id_categoria = c.id_categoria
	GROUP BY c.tipo
	ORDER BY cantidad_ventas DESC
	;	

#6 Vista para conocer la cantidad de ventas de cada empleado, ordenado de forma descendente
CREATE OR REPLACE VIEW ventas_empleado_vw AS
	SELECT CONCAT(e.nombre, ' ', e.apellido) AS nombre
		, COUNT(f.id_empleado) AS ventas
    FROM factura AS f
    INNER JOIN
		empleado as e ON f.id_empleado = e.id_empleado
    GROUP BY f.id_empleado
    ORDER BY ventas DESC
    ;

#7 Vista para conocer la cantidad de ventas por provincia ordenados alfabeticamente
CREATE OR REPLACE VIEW ventas_provincias_vw AS
	SELECT provincia
		, COUNT(f.id_sucursal) AS cantidad
	FROM factura AS f
	INNER JOIN sucursal AS s ON f.id_sucursal = s.id_sucursal
	INNER JOIN provincia AS p ON s.id_provincia = p.id_provincia
	GROUP BY f.id_sucursal
    ;
    
#8 Vista para devolver el total de ventas por año ordenados de forma ascendente
CREATE OR REPLACE VIEW facturacion_total_vw AS
    SELECT YEAR(fecha) AS año, SUM(total) AS total
    FROM farmacia.factura
    GROUP BY YEAR(fecha)
    ORDER BY año ASC
    ;

#9 Vista para conocer la cantidad de productos que provee cada proveedor ordenados por cantidad de forma descendente
CREATE OR REPLACE VIEW proveedor_total_vw AS
	SELECT CONCAT(pr.nombre, ' ', pr.apellido) as proveedor, COUNT(p.id_proveedor) AS cantidad
	FROM producto AS p
	INNER JOIN proveedor AS pr ON p.id_proveedor = pr.id_proveedor
	GROUP BY p.id_proveedor
    ORDER BY cantidad DESC
	;

#10 Vista para devolver el detalle de facturación, ordenado por fecha de forma descendente
CREATE OR REPLACE VIEW detalle_facturacion_vw AS
SELECT f.id_factura,
	f.fecha,
    f.hora,
    f.total,
    CONCAT(e.nombre, ' ', e.apellido) AS empleado,
    CONCAT(c.nombre, ' ', c.apellido) AS cliente,
    p.tipo AS pago,
    co.tipo AS compra,
    s.id_sucursal,
    prov.provincia
FROM factura AS f
JOIN empleado AS e ON f.id_empleado = e.id_empleado
JOIN cliente AS c ON f.id_cliente = c.id_cliente
JOIN pago AS p ON f.id_pago = p.id_pago
JOIN compra AS co ON f.id_compra = co.id_compra
JOIN sucursal AS s ON f.id_sucursal = s.id_sucursal
JOIN provincia AS prov ON s.id_provincia = prov.id_provincia
ORDER BY f.fecha DESC
;

########################################################
### 					FUNCIONES				     ###
########################################################

DELIMITER $$

USE farmacia $$

# Función para calcular IVA.
CREATE FUNCTION calcular_iva_fn (valor DEC(5,2))
RETURNS DEC(5,3)
NO SQL
BEGIN
    RETURN ((valor / 100) + 1);
END $$

# Función para conocer el nivel de stock de un producto.
CREATE FUNCTION stock_fn(id_producto INT)
RETURNS VARCHAR(10)
READS SQL DATA
BEGIN
	DECLARE nivel VARCHAR(10);
    DECLARE cantidad INT;
    DECLARE stock_min INT;
    DECLARE stock_max INT;
    SELECT stock.cantidad
		, stock.stock_min
        , stock.stock_max 
	INTO cantidad # guarda stock.cantidad en la variable cantidad
		, stock_min # guarda stock.stock_min en la variable stock_min
        , stock_max  # guarda stock.stock_max en la variable stock_max
	FROM stock 
    WHERE stock.id_producto = id_producto;
	IF cantidad = 0 THEN
		SET nivel = 'SIN STOCK';
	ELSEIF cantidad <= stock_min THEN
		SET nivel = 'BAJO';
	ELSEIF cantidad > stock_min AND cantidad < stock_max THEN
		SET nivel = 'NORMAL';
	ELSE
		SET nivel = 'ALTO';
	END IF;
    RETURN nivel;
END $$

# Función para conocer el monto del ultimo salario de un empleado.
CREATE FUNCTION salario_fn(id_empleado INT)
RETURNS DEC(11,2)
READS SQL DATA
BEGIN
	DECLARE monto DEC(11,2);
	SELECT salario.monto
    INTO monto # guarda el ultimo salario.monto en la variable monto
    FROM salario
    WHERE salario.id_empleado = id_empleado
	ORDER BY fecha DESC
    LIMIT 1;
    RETURN monto;
END $$

# Función para calcular el total de una factura sumando precio bruto + impuesto.
CREATE FUNCTION total_factura_fn(id_factura INT)
RETURNS DEC(11,2)
READS SQL DATA
BEGIN
	DECLARE total DEC(11,2);
    SELECT precio_bruto * calcular_iva_fn (impuesto)
    INTO total # guarda el calculo del select en la variable total
    FROM factura
    WHERE factura.id_factura = id_factura;
    RETURN total;
END $$

# Función para calcular la edad de una persona tomando como parametro la fecha de nacimiento.
CREATE FUNCTION calcular_edad_fn(nacimiento DATE)
RETURNS INT
NO SQL
BEGIN
	SET @edad = (SELECT FLOOR(DATEDIFF(CURDATE(), nacimiento) / 365));
    RETURN @edad;
END $$

DELIMITER ;

########################################################
### 				STORED PROCEDURES				 ###
########################################################

DELIMITER $$

USE farmacia $$


# Stored Procedure para registrar nuevo cliente:
# Este procedimiento recibe como parametros los
# datos del cliente y los registra en la tabla.
CREATE PROCEDURE registrar_cliente_sp(IN nombre VARCHAR(50), IN apellido VARCHAR(50), IN nacimiento DATE, IN id_genero INT, IN email VARCHAR(100), IN telefono VARCHAR(20), IN direccion VARCHAR(300), IN provincia INT)
BEGIN
	INSERT INTO farmacia.cliente VALUES
    (NULL, nombre, apellido, nacimiento, id_genero, email, telefono, direccion, provincia);
END $$
	
    
# Stored Procedure para calcular el total de ventas por categoría de productos:
# Este store procedure recibe como parámetros un rango de fechas
# y genera una tabla que muestra el total de ventas para cada categoría de
# productos durante ese período ordenados de forma descendente.
CREATE PROCEDURE ventas_x_categorias_sp (IN fecha_inicio DATE, IN fecha_fin DATE)
BEGIN
	SELECT c.tipo AS categoria, SUM(v.precio * v.cantidad) AS total_ventas
    FROM venta AS v
    INNER JOIN factura AS f ON v.id_factura = f.id_factura
    INNER JOIN producto AS p ON v.id_producto = p.id_producto
    INNER JOIN categoria AS c ON p.id_categoria = c.id_categoria  
    WHERE fecha 
    BETWEEN fecha_inicio AND fecha_fin
    GROUP BY c.tipo
    ORDER BY total_ventas DESC
	;
END $$


# Stored Procedure para actualizar el stock mínimo de un producto:
# Este store procedure recibe como parámetros el ID del
# producto y el nuevo valor del stock mínimo. El procedimiento
# actualiza el stock mínimo del producto en la tabla correspondiente.
CREATE PROCEDURE actualizar_stock_min_sp (IN id_producto INT, IN nuevo_stock_min INT)
BEGIN
	UPDATE farmacia.stock
    SET stock_min = nuevo_stock_min
    WHERE stock.id_producto = id_producto
    ;
END $$


# Stored Procedure para actualizar el stock máximo de un producto:
# Este store procedure recibe como parámetros el ID del
# producto y el nuevo valor del stock máximo. El procedimiento
# actualiza el stock máximo del producto en la tabla correspondiente.
CREATE PROCEDURE actualizar_stock_max_sp (IN id_producto INT, IN nuevo_stock_max INT)
BEGIN
	UPDATE farmacia.stock
    SET stock_max = nuevo_stock_max
    WHERE stock.id_producto = id_producto
    ;
END $$


# Stored Procedure para registrar un producto en una tabla buffer:
# Este procedimiento recibe como parametros el id de empleado,
# id del producto y la cantidad. Los inserta en la tabla solo si no existe y
# si hay stock suficiente. Si ya existe, lo actualiza.
CREATE PROCEDURE productos_venta_tmp_sp (IN id_empleado INT, IN id_producto INT, IN cantidad INT)
BEGIN
	# Guarda en la variable el stock actual del producto
	SET @stock = (SELECT s.cantidad FROM stock AS s WHERE s.id_producto = id_producto);
	# Comprobar si la cantidad en el stock es mayor que 0
	IF @stock > 0 THEN
		# Guarda el valor de nuevo_stock
        SET @nuevo_stock = @stock - cantidad;
        # Comprobar si el nuevo stock es 0 o mayor
		IF @nuevo_stock >= 0 THEN
			# Calcula el subtotal y lo guarda en la variable
			SET @precio = (SELECT p.precio FROM producto AS p WHERE p.id_producto = id_producto);
			SET @subtotal = @precio * cantidad;
			# Comprobar si el item no está en la tabla venta_tmp, hace el insert, sino actualiza la cantidad
            IF NOT EXISTS (SELECT id_producto FROM venta_tmp AS vt WHERE vt.id_empleado = id_empleado AND vt.id_producto = id_producto) THEN
				INSERT INTO venta_tmp VALUES
                (NULL, id_empleado, id_producto, cantidad, @subtotal, @nuevo_stock);
            ELSE
				UPDATE venta_tmp AS vt SET vt.cantidad = cantidad, vt.subtotal = @subtotal
                WHERE vt.id_producto = id_producto AND vt.id_empleado = id_empleado;
            END IF;
		ELSE
        # Sino devolver error y cantidad de stock"
        SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'STOCK INSUFICIENTE';
        END IF;
	ELSE
	# Sino devolver error"
    SIGNAL SQLSTATE '45000'
	SET MESSAGE_TEXT = 'SIN STOCK';
	END IF;
END $$


# Stored Procedure para registrar la factura de una venta:
# Este procedimiento recibe como parametros el id de: empleado,
# cliente, pago, compra, sucursal y el valor del impuesto.
# Primero genera una factura vacía para generar el id_factura.
# Luego tomando los datos de la tabla venta_tmp segun el id_empleado
# genera el detalle de venta en la tabla venta usando el mismo numero de id_factura.
# Luego actualiza el precio_bruto, impuesto (usando la funcion para calcular IVA)
# y total para la factura correspondiente. Ademas actualiza el stock de los productos.
# Por último, vacia la tabla buffer segun el id_empleado (venta_tmp).
CREATE PROCEDURE registrar_venta_sp (IN id_empleado INT, IN id_cliente INT, IN id_pago INT, IN id_compra INT, IN id_sucursal INT, IN impuesto DEC(5,2))
BEGIN
	DECLARE factura INT;
    # Inicia la transacción
    START TRANSACTION;
	# Insertar nueva factura
	INSERT INTO farmacia.factura (id_empleado, id_cliente, id_pago, id_compra, id_sucursal) VALUES
		(id_empleado, id_cliente, id_pago, id_compra, id_sucursal);
    SET @factura = LAST_INSERT_ID();
    # Inserta nueva venta con datos de venta_tmp
    INSERT INTO venta (id_factura, id_producto, cantidad, precio, subtotal)
		SELECT @factura, vt.id_producto, vt.cantidad, p.precio, vt.subtotal
	FROM venta_tmp AS vt
	JOIN producto AS p ON vt.id_producto = p.id_producto
	WHERE vt.id_empleado = id_empleado;
	# Actualiza el precio_bruto, impuesto y total en la factura
    UPDATE factura AS f
    SET f.precio_bruto = (SELECT SUM(subtotal) FROM venta WHERE venta.id_factura = @factura)
		, f.impuesto = impuesto
        , f.total = f.precio_bruto * calcular_iva_fn (impuesto)
    WHERE f.id_factura = @factura;
    # Actualizar stock
    UPDATE stock
    INNER JOIN venta_tmp ON venta_tmp.id_producto = stock.id_producto
    SET stock.cantidad = stock.cantidad - venta_tmp.cantidad
    WHERE venta_tmp.id_empleado = id_empleado;
	# Condicion para comprobar si algun stock es negativo, hacer rollback:
    # Se realiza otra comprobación de stock, ya que puede darse la situación que 2 empleados
    # cargaron el mismo id_producto en la tabla venta_tmp cuando había stock,
    # pero al momento de realizar la factura el stock es insuficiente.
    IF (SELECT COUNT(*) AS negativos
		FROM farmacia.stock
		INNER JOIN venta ON venta.id_producto = stock.id_producto
		WHERE venta.id_factura = @factura AND stock.cantidad < 0) > 0 THEN
        # Realizar rollback
        ROLLBACK;
        # Borra las filas de la tabla ventas_tmp para el id_empleado
		DELETE FROM venta_tmp
		WHERE venta_tmp.id_empleado = id_empleado;
        # Mostrar mensaje de error
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'NO SE REALIZÓ LA VENTA: COMPROBAR STOCK';
	ELSE
		# Sino
		# Borra las filas de la tabla ventas_tmp para el id_empleado
		DELETE FROM venta_tmp
		WHERE venta_tmp.id_empleado = id_empleado;
		# Realizar commit
		COMMIT;
	END IF;

END $$


# Stored Procedure para registrar nuevo empleado:
# Este procedimiento recibe como parametros los
# datos del empleado y los registra en la tabla.
CREATE PROCEDURE registrar_empleado_sp(IN nombre VARCHAR(50), IN apellido VARCHAR(50), IN nacimiento DATE, IN id_genero INT, IN inicio DATE, IN email VARCHAR(100), IN telefono VARCHAR(20), IN direccion VARCHAR(300), IN provincia INT)
BEGIN
	INSERT INTO farmacia.empleado VALUES
    (NULL, nombre, apellido, nacimiento, id_genero, inicio, email, telefono, direccion, provincia);
END $$


# Stored Procedure para registrar nuevo proveedor:
# Este procedimiento recibe como parametros los
# datos del proveedor y los registra en la tabla.
CREATE PROCEDURE registrar_proveedor_sp(IN nombre VARCHAR(50), IN apellido VARCHAR(50), IN email VARCHAR(100), IN telefono VARCHAR(20), IN direccion VARCHAR(300), IN provincia INT)
BEGIN
	INSERT INTO farmacia.proveedor VALUES
    (NULL, nombre, apellido, email, telefono, direccion, provincia);
END $$


# Stored Procedure para registrar nuevo producto:
# Este procedimiento recibe como parametros los
# datos del producto y los registra en la tabla.
CREATE PROCEDURE registrar_producto_sp(IN nombre VARCHAR(50), IN precio DEC(11,2), IN farmaco VARCHAR(100), IN id_categoria INT, IN id_proveedor INT)
BEGIN
	INSERT INTO farmacia.producto (nombre, precio, farmaco, id_categoria, id_proveedor) VALUES
    (nombre, precio, farmaco, id_categoria, id_proveedor);
END $$


# Stored Procedure para actualizar un producto:
# Este procedimiento recibe como parametros los
# datos del producto y lo actualiza.
CREATE PROCEDURE actualizar_producto_sp(IN id_producto INT, IN nombre VARCHAR(50), IN precio DEC(11,2), IN farmaco VARCHAR(100), IN id_categoria INT, IN id_proveedor INT, IN activo INT)
BEGIN
	IF farmaco = '' THEN
		SET farmaco = NULL;
	END IF;
    UPDATE farmacia.producto
    SET nombre = nombre
		, precio = precio
        , farmaco = farmaco
        , id_categoria = id_categoria
        , id_proveedor = id_proveedor
        , activo = activo
	WHERE producto.id_producto = id_producto;
END $$

DELIMITER ;

########################################################
### 				    TRIGGERS					 ###
########################################################

DELIMITER $$
USE farmacia $$

#1 Trigger AFTER UPDATE para registrar actualización de precio en un producto
# utilizando la tabla log_precios.
CREATE TRIGGER actualizar_precio_producto_tr
AFTER UPDATE ON producto
FOR EACH ROW
BEGIN
    IF NEW.precio <> OLD.precio THEN
        INSERT INTO log_precios (id_producto, precio_anterior, precio_nuevo, fecha, usuario) VALUES
			(
            OLD.id_producto
			, OLD.precio
			, NEW.precio
            , NOW()
            , user()
            );
	END IF;
END $$

#2 Trigger AFTER INSERT para registrar la fecha y el usuario luego de la inserción
# de un nuevo producto utilizando la tabla log_nuevo_producto.
CREATE TRIGGER nuevo_producto_tr
AFTER INSERT ON producto
FOR EACH ROW
BEGIN
	INSERT INTO log_nuevo_producto (id_producto, fecha, usuario) VALUES
		(
		NEW.id_producto
        , NOW()
        , user()
        );

END $$

#3 Trigger AFTER INSERT para registrar cuando se genera una nueva factura
# utilizando la tabla log_nueva_factura
CREATE TRIGGER registrar_facturas_tr
AFTER INSERT ON factura
FOR EACH ROW
BEGIN
	INSERT INTO log_nueva_factura VALUES
		(
        NULL
		, NEW.id_factura
		, NOW()
		, NEW.total
		, user()
		);
END $$

#4 Trigger BEFORE INSERT para verificar que los lotes de productos tengan
# fecha de vencimiento superior al dia en que se insertan.
CREATE TRIGGER verificar_vencimiento_tr
BEFORE INSERT ON lote
FOR EACH ROW
BEGIN
	IF NEW.vencimiento < CURDATE() THEN
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'NO SE PUEDE REGISTRAR: LA FECHA DE VENCIMIENTO EXPIRÓ';
	END IF;
END $$

#5 Trigger AFTER UPDATE para registrar un incremento en el stock
# de un producto utilizando la tabla log_cambio_stock
CREATE TRIGGER aumento_stock_tr
AFTER UPDATE ON stock
FOR EACH ROW
BEGIN
	IF NEW.cantidad > OLD.cantidad THEN
		INSERT INTO log_cambio_stock (id_producto, fecha, usuario) VALUES
			(
            OLD.id_producto
            , NOW()
            , user()
            );
	END IF;
END $$

#6 Trigger BEFORE INSERT para verificar que el registro de un
# nuevo cliente sea mayor a 18 años de edad.
# Utiliza la funcion calcular_edad_fn.
CREATE TRIGGER verificar_edad_tr
BEFORE INSERT ON cliente
FOR EACH ROW
BEGIN
	SET @edad = calcular_edad_fn(NEW.nacimiento);
    IF @edad < 18 THEN
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'NO SE PUEDE REGISTRAR: CLIENTE MENOR DE 18 AÑOS';
	END IF;
END $$

#7 Trigger BEFORE INSERT para verificar que un empleado esté activo
# antes del registro de entrada o salida de una sucursal.
CREATE TRIGGER verificar_empleado_tr
BEFORE INSERT ON registro
FOR EACH ROW
BEGIN
	SET @activo = (SELECT activo FROM empleado WHERE id_empleado = NEW.id_empleado);
    IF @activo = 0 THEN
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'NO SE PUEDE REGISTRAR: EL EMPLEADO NO ESTÁ ACTIVO';
	END IF;
END $$


DELIMITER ;

# Curso SQL
# Profesor: César Aracena

# INSERCION DE DATOS PARA LA BASE DE DATOS FARMACIA

USE farmacia;

#1 provincia
INSERT INTO farmacia.provincia (provincia) VALUES
    ('Buenos Aires'),
    ('Córdoba'),
    ('Santa Fe'),
    ('Mendoza'),
    ('Tucumán'),
    ('Entre Ríos'),
    ('Salta'),
    ('Chaco'),
    ('Corrientes'),
    ('Santiago del Estero'),
    ('Jujuy'),
    ('San Juan'),
    ('Río Negro'),
    ('Neuquén'),
    ('Formosa'),
    ('Chubut'),
    ('Misiones'),
    ('San Luis'),
    ('La Rioja'),
    ('Catamarca'),
    ('La Pampa'),
    ('Santa Cruz'),
    ('Tierra del Fuego');
    
#2 genero
INSERT INTO farmacia.genero (genero) VALUES
	('Masculino'),
    ('Femenino');
    
#3 cliente
INSERT INTO farmacia.cliente (nombre, apellido, nacimiento, id_genero, email, telefono, direccion, id_provincia) VALUES
	('Sofía', 'García', '1992-03-10', '2', 'sofia.garcia@gmail.com', '3415556789', '9 de Julio 123', '3'),
	('Mateo', 'Martínez', '1985-11-25', '1', 'mateo.martinez@yahoo.com', '3515559012', 'Rivadavia 456', '2'),
	('Isabella', 'López', '1979-06-15', '2', 'isabella.lopez@hotmail.com', '2615553456', 'Florida 789', '4'),
	('Jorgelina', 'Rodríguez', '1996-02-18', '2', 'jorgelina.rodriguez@gmail.com', '115556789', '9 2468', '1'),
	('Valentina', 'Hernández', '1976-09-30', '2', 'valentina.hernandez@yahoo.com', '3415551234', 'San Martín 987', '3'),
	('Joaquín', 'Gómez', '1988-05-02', '1', 'joaquin.gomez@hotmail.com', '3515554567', 'Colón 321', '2'),
	('Catalina', 'Torres', '1994-11-17', '2', 'catalina.torres@gmail.com', '2615557890', 'Sarmiento 654', '4'),
	('Sebastián', 'Pérez', '1978-07-23', '1', 'sebastian.perez@yahoo.com', '115551234', '3 9876', '1'),
	('Emma', 'Flores', '1961-01-08', '2', 'emma.flores@hotmail.com', '3415554567', 'Reconquista 543', '3'),
	('Lucas', 'Herrera', '1983-08-14', '1', 'lucas.herrera@gmail.com', '3515557890', 'Independencia 789', '4'),
	('Mía', 'Díaz', '1975-04-27', '2', 'mia.diaz@yahoo.com', '2615551234', 'Maipú 123', '4'),
	('Nicolás', 'Silva', '1990-10-12', '1', 'nicolas.silva@gmail.com', '115554567', 'Cabildo 9876', '1'),
	('Valeria', 'González', '1977-07-29', '2', 'valeria.gonzalez@yahoo.com', '3415557890', '12 654', '3'),
	('Agustín', 'Pereira', '1986-03-17', '1', 'agustin.pereira@hotmail.com', '3515552345', 'Callao 2345', '3'),
	('Camila', 'Andrade', '1993-03-02', '2', 'camila.andrade@gmail.com', '2615555678', 'San Martín 567', '4'),
	('Luciano', 'Machado', '1978-09-21', '1', 'luciano.machado@yahoo.com', '115558901', 'Libertador 8901', '1'),
	('Martina', 'Rojas', '1992-06-17', '2', 'martina.rojas@hotmail.com', '3415552345', '9 2345', '3'),
	('Matías', 'González', '1983-02-05', '1', 'matias.gonzalez@gmail.com', '3515555678', 'Pellegrini 5678', '2'),
	('Valentina', 'Torres', '1974-10-09', '2', 'valentina.torres@yahoo.com', '2615558901', '12 8901', '4'),
	('Julián', 'Pérez', '1990-05-24', '1', 'julian.perez@gmail.com', '115552345', '12 2345', '1'),
	('Antonella', 'Martínez', '1977-08-12', '2', 'antonella.martinez@yahoo.com', '3415555678', 'Vélez Sársfield 567', '3'),
	('Maximiliano', 'Santos', '1989-01-26', '1', 'maximiliano.santos@hotmail.com', '3515558901', 'Callao 8901', '2'),
	('Florencia', 'Fernández', '1976-06-03', '2', 'florencia.fernandez@gmail.com', '2615552345', 'Sarmiento 2345', '4'),
	('Facundo', 'Lima', '1953-11-16', '1', 'facundo.lima@yahoo.com', '115555678', 'Libertador 5678', '4'),
	('Isabella', 'Machado', '1984-03-29', '2', 'isabella.machado@gmail.com', '3415558901', 'San Martín 8901', '3'),
	('Emilio', 'González', '1991-10-14', '1', 'emilio.gonzalez@yahoo.com', '3515552345', '9 2345', '2'),
	('Valentina', 'Santos', '1973-07-11', '2', 'valentina.santos@hotmail.com', '2615555678', 'Pellegrini 5678', '4'),
	('Diego', 'Pérez', '1990-02-28', '1', 'diego.perez@gmail.com', '11555901', 'Vélez Sársfield 890', '1'),
	('Renata', 'Herrera', '1978-09-05', '2', 'renata.herrera@yahoo.com', '3415552345', '12 2345', '3'),
	('Francisco', 'Gómez', '1988-04-21', '1', 'francisco.gomez@hotmail.com', '3515555678', '12 5678', '2'),
	('Sofía', 'Martínez', '1975-11-08', '2', 'sofia.martinez@gmail.com', '2615558901', 'Libertador 8901', '4'),
	('Lucas', 'Rojas', '1993-05-23', '1', 'lucas.rojas@yahoo.com', '115552345', '9 2345', '1'),
	('Valentina', 'García', '1974-08-09', '2', 'valentina.garcia@gmail.com', '3415555678', 'Sarmiento 567', '3'),
	('Natalia', 'Silva', '1966-01-16', '2', 'natalia.silva@yahoo.com', '3515558901', 'Vélez Sársfield 8901', '2'),
	('Isabella', 'Flores', '1976-06-02', '2', 'isabella.flores@hotmail.com', '2615552345', 'Callao 2345', '4'),
	('Mateo', 'Hernández', '1993-11-15', '1', 'mateo.hernandez@gmail.com', '115555678', 'San Martín 5678', '1'),
	('Valentina', 'Pérez', '1983-04-19', '2', 'valentina.perez@yahoo.com', '3415558901', 'Libertador 8901', '3'),
	('Joaquín', 'González', '1990-09-11', '1', 'joaquin.gonzalez@gmail.com', '3515552345', '12 2345', '2'),
	('Catalina', 'Santos', '1977-02-27', '2', 'catalina.santos@hotmail.com', '2615555678', '9 5678', '4'),
	('Sebastián', 'López', '1972-09-10', '1', 'sebastian.lopez@yahoo.com', '115558901', 'Pellegrini 8901', '1'),
	('Emma', 'Gómez', '1984-04-30', '2', 'emma.gomez@gmail.com', '3415552345', 'Vélez Sársfield 234', '3'),
	('Lucas', 'Martínez', '1991-11-16', '1', 'lucas.martinez@hotmail.com', '3515555678', '9 5678', '2');

#4 sucursal
INSERT INTO farmacia.sucursal (email, telefono, direccion, id_provincia) VALUES
	('sucursal_cordoba@farmacia.com', '351123456', 'Colón 123', '2'),
	('sucursal_santa_fe@farmacia.com', '342345678', 'Facundo Zuviría 789', '3'),
	('sucursal_buenos_aires@farmacia.com', '11567890', '9 456', '1'),
	('sucursal_4@farmacia.com', '261789012', 'San Martín 123', '4');

# venta_tmp

#5 empleado
INSERT INTO farmacia.empleado (nombre, apellido, nacimiento, id_genero, inicio, email, telefono, direccion, id_provincia, activo) VALUES
    ('Sofía', 'González', '1992-05-15', '2', '2021-01-01', 'sofia.gonzalez@farmacia.com', '351111111', 'Belgrano 4200', '2', 1),
    ('Sabrina', 'López', '1990-03-02', '2', '2023-05-20', 'valentina.lopez@farmacia.com', '351333333', 'Lanin 789', '2', 1),
    ('Matías', 'Rojas', '1993-04-23', '1', '2018-01-15', 'matias.rojas@farmacia.com', '341111122', 'Independencia 456', '3', 1),
    ('Valentina', 'Fernández', '1987-11-30', '2', '2017-08-25', 'valentina.fernandez@farmacia.com', '341111133', 'Maipú 789', '3', 1),
    ('Joaquín', 'Paez', '1991-03-05', '1', '2021-08-01', 'joaquin.gomez@farmacia.com', '261111111', 'Rivadavia 123', '4', 1),
    ('Mía', 'Silva', '1991-07-11', '2', '2022-09-14', 'mia.rojas@farmacia.com', '261888888', 'San Martín 456', '4', 1),
    ('Benjamín', 'Gómez', '1986-05-03', '1', '2021-12-01', 'benjamin.gomez@farmacia.com', '541111111', 'Las Flores 223', '1', 1),
    ('Lucas', 'Medina', '1991-09-21', '2', '2023-04-15', 'lucas.fernandez@farmacia.com', '541222222', 'San Martín 456', '1', 1);

#6 compra_tipo
INSERT INTO farmacia.compra (tipo) VALUES
    ('fisica'),
    ('web');

#7 pago_tipo
INSERT INTO farmacia.pago (tipo) VALUES
    ('efectivo'),
    ('debito'),
    ('credito');

#8 factura
INSERT INTO farmacia.factura (fecha, hora, precio_bruto, impuesto, total, id_empleado, id_cliente, id_pago, id_compra, id_sucursal) VALUES
	('2020-01-10', '09:00:00', 37.98, 21.00, 45.95, 2, 32, 2, 1, 1),
    ('2020-02-15', '09:30:00', 54.99, 21.00, 66.53, 5, 6, 1, 1, 3),
    ('2020-03-20', '10:45:00', 19.99, 21.00, 24.18, 3, 11, 3, 2, 2),
    ('2021-04-25', '12:00:00', 26.97, 21.00, 32.63, 4, 8, 1, 1, 2),
    ('2021-05-30', '13:15:00', 7.50, 21.00, 9.07, 5, 2, 2, 1, 3),
    ('2022-06-05', '14:30:00', 20.00, 21.00, 24.20, 8, 6, 3, 2, 4),
    ('2022-07-10', '15:45:00', 6.25, 21.00, 7.56, 7, 24, 1, 1, 4),
    ('2023-02-15', '17:00:00', 10.00, 21.00, 12.10, 1, 33, 2, 1, 1),
    ('2023-03-20', '18:15:00', 22.99, 21.00, 27.81, 5, 10, 2, 1, 3),
    ('2023-04-25', '19:30:00', 14.97, 21.00, 18.11, 2, 18, 3, 1, 1);
    
#9 categoria_producto
INSERT INTO farmacia.categoria (tipo) VALUES
	('medicamento'),
	('perfumeria'),
	('alimento'),
	('bebida'),
	('electro'),
	('servicio'),
	('cosmetico'),
	('maternidad');

#10 proveedor
INSERT INTO farmacia.proveedor (nombre, apellido, email, telefono, direccion, id_provincia) VALUES
    ('Juan', 'Gómez', 'juan.gomez@farmalab.com', '115551234', 'Rivadavia 123', '5'),
    ('María', 'Santos', 'maria.santos@pharmasupply.com', '342456789', 'Brasil 456', '18'),
    ('Carlos', 'López', 'carlos.lopez@medifarma.com', '261509123', '12 789', '12'),
    ('Laura', 'Rodríguez', 'laura.rodriguez@farmacorp.com', '351456321', 'Belgrano 234', '6'),
    ('Daniel', 'Fernández', 'daniel.fernandez@pharmadirect.com', '223456789', 'Mitre 567', '1'),
    ('Ana', 'Martínez', 'ana.martinez@globalpharma.com', '342457896', 'Independencia 890', '3'),
    ('Javier', 'Chaves', 'javier.chaves@saludexpress.com', '261504567', 'San Martín 123', '12'),
    ('Carolina', 'Vargas', 'carolina.vargas@pharmalink.com', '351456789', 'Talero 456', '2'),
    ('Luis', 'Medina', 'luis.medina@medicalplus.com', '223123456', 'Soldado Desconocido 789', '7'),
    ('Mariana', 'Pereira', 'mariana.pereira@vitalpharma.com', '342455678', 'La Rioja 890', '3');

#11 producto
-- #1 Medicamentos
INSERT INTO farmacia.producto (nombre, precio, farmaco, id_categoria, id_proveedor) VALUES
    ('Paracetamol 500mg', 5.99, 'Acetaminofén', 1, 1),
    ('Amoxicilina 250mg', 7.50, 'Amoxicilina', 1, 1),
    ('Loratadina 10mg', 3.75, 'Loratadina', 1, 2),
    ('Ibuprofeno 400mg', 4.99, 'Ibuprofeno', 1, 7),
    ('Omeprazol 20mg', 6.25, 'Omeprazol', 1, 2),
    ('Dipirona 500mg', 3.50, 'Dipirona', 1, 5),
    ('Aspirina 100mg', 2.99, 'Ácido acetilsalicílico', 1, 9),
    ('Dexametasona 0.5mg', 5.50, 'Dexametasona', 1, 3),
    ('Clonazepam 2mg', 8.75, 'Clonazepam', 1, 3),
    ('Salbutamol Inhalador', 12.99, 'Salbutamol', 1, 2),
	('Paracetamol 250mg', 3.99, 'Acetaminofén', 1, 6),
    ('Amoxicilina 500mg', 9.99, 'Amoxicilina', 1, 8),
    ('Loratadina 5mg', 2.50, 'Loratadina', 1, 2),
    ('Ibuprofeno 200mg', 3.99, 'Ibuprofeno', 1, 4),
    ('Omeprazol 40mg', 8.50, 'Omeprazol', 1, 2),
    ('Dipirona 250mg', 2.75, 'Dipirona', 1, 2),
    ('Aspirina 50mg', 1.99, 'Ácido acetilsalicílico', 1, 3),
    ('Dexametasona 0.25mg', 3.25, 'Dexametasona', 1, 4),
    ('Clonazepam 1mg', 6.75, 'Clonazepam', 1, 4),
    ('Salbutamol Jarabe', 8.99, 'Salbutamol', 1, 3),
    
-- 2# Perfumería
    ('Perfume Floral', 59.99, NULL, 2, 4),
    ('Colonia Cítrica', 42.50, NULL, 2, 4),
    ('Loción Corporal Hidratante', 15.75, NULL, 2, 4),
    ('Desodorante Roll-On', 8.99, NULL, 2, 4),
    ('Crema Facial Antiarrugas', 25.99, NULL, 2, 4),
    ('Gel de Ducha Aromático', 12.50, NULL, 2, 8),
    ('Perfume 1', 54.99, NULL, 2, 8),
    ('Crema Corporal Reafirmante', 18.75, NULL, 2, 8),
    ('Eau de Toilette', 37.50, NULL, 2, 8),
    ('Lápiz de Cejas', 9.99, NULL, 2, 8),
    ('Crema de Manos', 11.25, NULL, 2, 2),
    ('Champú Nutritivo', 14.99, NULL, 2, 2),
    ('Acondicionador Reparador', 13.50, NULL, 2, 2),
    ('Mascarilla Capilar', 17.99, NULL, 2, 2),
    ('Desodorante en Spray', 6.75, NULL, 2, 3),
    ('Gel Antibacterial', 5.50, NULL, 2, 3),
    ('Toallitas Desmaquillantes', 9.25, NULL, 2, 3),
    ('Crema Solar FPS 50', 22.99, NULL, 2, 3),
    ('Bálsamo Labial', 4.50, NULL, 2, 1),
    ('Esponja Exfoliante', 7.99, NULL, 2, 1),
    
-- 3# Alimentos
    ('Leche Descremada 1L', 3.99, NULL, 3, 3),
    ('Galletas Integrales', 2.50, NULL, 3, 3),
    ('Aceite de Oliva Extra Virgen', 7.99, NULL, 3, 3),
    ('Arroz Blanco 1kg', 1.99, NULL, 3, 7),
    ('Azúcar Blanca 1kg', 2.50, NULL, 3, 7),
    ('Harina de Trigo 1kg', 1.75, NULL, 3, 7),
    ('Café Molido 250g', 4.50, NULL, 3, 7),
    ('Mermelada de Frutas', 3.25, NULL, 3, 10),
    ('Pasta de Trigo', 2.99, NULL, 3, 10),
    ('Sopa Instantánea', 1.50, NULL, 3, 10),
	('Gomitas de Vitamina C', 5.99, NULL, 3, 3),
    ('Barra de Proteínas', 2.50, NULL, 3, 3),
    ('Cápsulas de Aceite de Pescado', 7.99, NULL, 3, 3),
    ('Pasta sin Gluten', 4.99, NULL, 3, 7),
    ('Chocolate sin Azúcar', 3.50, NULL, 3, 7),
    ('Galletas de Grano Entero', 2.75, NULL, 3, 7),
    ('Té Herbal', 3.99, NULL, 3, 7),
    ('Suplemento de Fibra', 4.50, NULL, 3, 10),
    ('Yogur Probiótico', 3.25, NULL, 3, 10),
    ('Sopa Baja en Sodio', 2.50, NULL, 3, 10),
    
-- 4# Bebidas
    ('Agua Mineral 500ml', 1.25, NULL, 4, 2),
    ('Refresco de Cola', 1.99, NULL, 4, 2),
    ('Jugo de Naranja', 2.50, NULL, 4, 2),
    ('Cerveza Artesanal', 4.75, NULL, 4, 4),
    ('Jugo de Pomelo', 2.50, NULL, 4, 4),
    ('Agua de Coco', 3.50, NULL, 4, 4),
    ('Té Verde', 2.25, NULL, 4, 6),
    ('Batido de Frutas', 3.75, NULL, 4, 6),
    ('Energizante', 5.50, NULL, 4, 6),
    ('Infusión de Hierbas', 2.99, NULL, 4, 6),
	('Agua Gasificada 500ml', 1.25, NULL, 4, 2),
    ('Bebida Energética', 2.99, NULL, 4, 2),
    ('Infusión Digestiva', 2.50, NULL, 4, 2),
    ('Bebida de Aloe Vera', 3.75, NULL, 4, 4),
    ('Jugo de Uva 250ml', 2.25, NULL, 4, 4),
    ('Agua Saborizada', 1.99, NULL, 4, 4),
    ('Té de Hierbas Relajante', 3.50, NULL, 4, 6),
    ('Bebida de Proteína Listo para Beber', 4.99, NULL, 4, 6),
    ('Batido Nutricional', 5.50, NULL, 4, 6),
    ('Bebida de Almendras', 3.25, NULL, 4, 6),
    
-- 5# Electro
    ('Termómetro Digital', 19.99, NULL, 5, 7),
    ('Pulsera de Actividad', 29.99, NULL, 5, 10),
    ('Cepillo Eléctrico', 12.50, NULL, 5, 7),
    ('Afeitadora Eléctrica', 49.99, NULL, 5, 7),
    ('Plancha de Cabello', 34.75, NULL, 5, 8),
    ('Cargador Portátil', 15.50, NULL, 5, 8),
    ('Báscula Digital', 22.99, NULL, 5, 7),
    ('Cámara de Seguridad', 59.75, NULL, 5, 7),
    ('Altavoz Bluetooth', 39.99, NULL, 5, 8),
    ('Aspiradora de Mano', 29.50, NULL, 5, 7),
	('Lámpara de Terapia de Luz', 49.99, NULL, 5, 8),
    ('Tensiómetro Digital', 39.99, NULL, 5, 7),
    ('Humidificador Ultrasónico', 29.50, NULL, 5, 7),
    ('Masajeador de Cuello', 24.75, NULL, 5, 7),
    ('Cepillo Dental Eléctrico', 19.99, NULL, 5, 9),
    ('Inhalador Portátil', 34.99, NULL, 5, 5),
    ('Termo Eléctrico', 42.50, NULL, 5, 7),
    ('Monitor de Oxígeno en Sangre', 59.99, NULL, 5, 7),
    ('Despertador Inteligente', 27.99, NULL, 5, 7),
    ('Purificador de Aire', 89.99, NULL, 5, 10),
    
-- 6# Servicio
    ('Vacunación Influenza', 20.00, NULL, 6, NULL),
    ('Asesoría Nutricional', 50.00, NULL, 6, NULL),
    ('Consulta Médica', 30.00, NULL, 6, NULL),
    ('Masaje Relajante', 40.00, NULL, 6, NULL),
    ('Tratamiento Facial', 60.00, NULL, 6, NULL),
    ('Análisis de Sangre', 25.00, NULL, 6, NULL),
    ('Terapia de Rehabilitación', 45.00, NULL, 6, NULL),
    ('Tratamiento Capilar', 55.00, NULL, 6, NULL),
    ('Examen de Vista', 35.00, NULL, 6, NULL),
    ('Asesoría Legal', 50.00, NULL, 6, NULL),
    
-- 7# Cosméticos
    ('Base de Maquillaje', 24.99, NULL, 7, 8),
    ('Rubor en Polvo', 12.50, NULL, 7, 10),
    ('Lápiz Labial', 9.75, NULL, 7, 3),
    ('Sombra de Ojos', 14.99, NULL, 7, 4),
    ('Máscara de Pestañas', 11.99, NULL, 7, 5),
    ('Delineador de Ojos', 8.50, NULL, 7, 6),
    ('Esmalte de Uñas', 6.25, NULL, 7, 7),
    ('Crema Hidratante Facial', 18.99, NULL, 7, 8),
    ('Desmaquillante', 9.50, NULL, 7, 9),
    ('Perfume en Crema', 21.50, NULL, 7, 10),
	('Corrector de Ojeras', 10.99, NULL, 7, 7),
    ('Paleta de Sombras', 19.50, NULL, 7, 7),
    ('Máscara de Cejas', 8.75, NULL, 7, 5),
    ('Labial Líquido Mate', 12.99, NULL, 7, 4),
    ('Delineador de Labios', 7.50, NULL, 7, 5),
    ('Polvo Compacto', 15.99, NULL, 7, 6),
    ('Brillo de Labios', 9.25, NULL, 7, 7),
    ('Crema Antiedad', 28.50, NULL, 7, 8),
    ('Agua Micelar', 11.50, NULL, 7, 9),
    ('Perfume Roll-On', 17.99, NULL, 7, 10),
-- 8# Maternidad
    ('Pañales Desechables', 15.99, NULL, 8, 7),
    ('Toallitas Húmedas', 7.50, NULL, 8, 6),
    ('Leche en Polvo para Bebés', 21.75, NULL, 8, 4),
    ('Biberón con Tetina', 8.99, NULL, 8, 4),
    ('Crema Antiestrías', 12.99, NULL, 8, 6),
    ('Chupete para Bebés', 4.50, NULL, 8, 6),
    ('Cepillo y Peine para Bebés', 6.25, NULL, 8, 4),
    ('Loción Corporal para Bebés', 9.99, NULL, 8, 9),
    ('Cuna de Bebé', 59.99, NULL, 8, 9),
    ('Pañalera Portátil', 17.50, NULL, 8, 4),
	('Extractor de Leche Eléctrico', 49.99, NULL, 8, 5),
    ('Champú para Bebés', 6.50, NULL, 8, 4),
    ('Termómetro para Baño de Bebés', 12.99, NULL, 8, 6),
    ('Manta de Algodón para Bebés', 15.75, NULL, 8, 5),
    ('Cambiador Portátil', 19.99, NULL, 8, 5),
    ('Ropa Interior Posparto', 9.50, NULL, 8, 6),
    ('Hamaca para Bebés', 29.99, NULL, 8, 7),
    ('Crema para Pezones Agrietados', 8.25, NULL, 8, 8),
    ('Portabebés Ergonómico', 39.99, NULL, 8, 7),
    ('Alfombra de Juego para Bebés', 24.50, NULL, 8, 10);

#12 detalle_venta
INSERT INTO farmacia.venta (id_factura, id_producto, cantidad, precio) VALUES
    (1, 68, 2, 18.99),
    (2, 17, 1, 54.99),
    (3, 41, 1, 19.99),
    (4, 14, 3, 8.99),
    (5, 2, 1, 7.50),
    (6, 51, 1, 20.00),
    (7, 77, 1, 6.25),
    (8, 22, 4, 2.50),
    (9, 47, 1, 22.99),
    (10, 4, 3, 4.99);

#13 stock
INSERT INTO farmacia.stock (cantidad, stock_min, stock_max, id_producto) VALUES
    (8, 10, 30, 1),
    (20, 15, 30, 2),
    (25, 10, 30, 3),
    (15, 15, 30, 4),
    (23, 15, 30, 5),
    (11, 15, 30, 6),
    (10, 10, 30, 7),
    (38, 10, 30, 8),
    (11, 10, 30, 9),
    (12, 10, 30, 10),
    (17, 15, 30, 11),
    (18, 20, 30, 12),
    (0, 15, 30, 13),
    (12, 15, 30, 14),
    (27, 15, 30, 15),
    (23, 20, 30, 16),
    (21, 10, 30, 17),
    (22, 10, 30, 18),
    (23, 10, 30, 19),
    (39, 15, 30, 20),
    (39, 10, 30, 21),
    (10, 15, 30, 22),
    (25, 15, 30, 23),
    (24, 15, 30, 24),
    (17, 10, 30, 25),
    (17, 15, 30, 26),
    (25, 15, 30, 27),
    (10, 15, 30, 28),
    (28, 10, 30, 29),
    (27, 10, 30, 30),
    (18, 10, 30, 31),
    (14, 10, 30, 32),
    (22, 15, 30, 33),
    (33, 20, 30, 34),
    (20, 15, 30, 35),
    (12, 15, 30, 36),
    (39, 25, 30, 37),
    (21, 20, 30, 38),
    (22, 10, 30, 39),
    (0, 10, 30, 40),
	(15, 20, 30, 41),
    (20, 15, 30, 42),
    (22, 10, 30, 43),
    (25, 10, 30, 44),
    (28, 15, 30, 45),
    (17, 20, 30, 46),
    (18, 15, 30, 47),
    (23, 15, 30, 48),
    (29, 10, 30, 49),
    (21, 15, 30, 50),
    (30, 10, 30, 51),
    (18, 15, 30, 52),
    (22, 10, 30, 53),
    (25, 15, 30, 54),
    (10, 20, 30, 55),
    (12, 15, 30, 56),
    (18, 15, 30, 57),
    (25, 10, 30, 58),
    (22, 15, 30, 59),
    (27, 15, 30, 60),
    (22, 20, 30, 61),
    (19, 15, 30, 62),
    (18, 15, 30, 63),
    (28, 15, 30, 64),
    (17, 10, 30, 65),
    (20, 10, 30, 66),
    (30, 10, 30, 67),
    (23, 30, 30, 68),
    (16, 15, 30, 69),
    (25, 20, 30, 70),
    (28, 15, 30, 71),
    (0, 15, 30, 72),
    (31, 15, 30, 73),
    (12, 20, 30, 74),
    (21, 10, 30, 75),
	(20, 10, 30, 76),
    (27, 10, 30, 77),
    (24, 25, 30, 78),
    (37, 10, 30, 79),
    (33, 15, 30, 80),
    (10, 15, 30, 81),
	(12, 15, 30, 82),
	(18, 10, 30, 83),
	(25, 10, 30, 84),
	(15, 20, 30, 85),
	(14, 15, 30, 86),
	(23, 15, 30, 87),
	(29, 15, 30, 88),
	(21, 10, 30, 89),
	(17, 15, 30, 90),
	(20, 15, 30, 91),
	(18, 10, 30, 92),
	(22, 10, 30, 93),
	(27, 10, 30, 94),
	(14, 15, 30, 95),
	(19, 10, 30, 96),
	(23, 15, 30, 97),
	(22, 10, 30, 98),
	(17, 15, 30, 99),
	(20, 15, 30, 100),
	(25, 10, 30, 101),
	(15, 20, 30, 102),
	(14, 15, 30, 103),
	(23, 15, 30, 104),
	(29, 15, 30, 105),
	(21, 10, 30, 106),
	(17, 15, 30, 107),
	(20, 15, 30, 108),
	(18, 10, 30, 109),
	(22, 10, 30, 110),
	(27, 10, 30, 111),
	(14, 15, 30, 112),
	(19, 10, 30, 113),
	(23, 15, 30, 114),
	(22, 10, 30, 115),
	(17, 15, 30, 116),
	(20, 15, 30, 117),
	(25, 10, 30, 118),
	(15, 20, 30, 119),
	(14, 15, 30, 120),
	(23, 15, 30, 121),
	(29, 15, 30, 122),
	(21, 10, 30, 123),
	(17, 15, 30, 124),
	(20, 15, 30, 125),
	(18, 10, 30, 126),
	(22, 10, 30, 127),
	(27, 10, 30, 128),
	(14, 15, 30, 129),
	(19, 10, 30, 130),
	(23, 15, 30, 131),
	(22, 10, 30, 132),
	(17, 15, 30, 133),
	(20, 15, 30, 134),
	(25, 10, 30, 135),
	(15, 20, 30, 136),
	(14, 15, 30, 137),
	(23, 15, 30, 138),
	(29, 15, 30, 139),
	(21, 10, 30, 140),
	(17, 15, 30, 141),
	(20, 15, 30, 142),
	(18, 10, 30, 143),
	(22, 10, 30, 144),
	(27, 10, 30, 145),
	(14, 15, 30, 146),
	(19, 10, 30, 147),
	(23, 15, 30, 148),
	(22, 10, 30, 149),
	(17, 15, 30, 150);
    
#14 salario
INSERT INTO farmacia.salario (id_empleado, fecha, monto) VALUES
	(1, '2023-05-01', 8000.00),
    (2, '2023-05-01', 7900.00),
    (3, '2023-05-01', 7800.00),
    (4, '2023-05-01', 7700.00),
    (5, '2023-05-01', 7600.00),
    (6, '2023-05-01', 7500.00),
    (7, '2023-05-01', 7400.00),
    (8, '2023-05-01', 7300.00),
    (1, '2023-06-01', 8000.00),
    (2, '2023-06-01', 7900.00),
    (3, '2023-06-01', 7800.00),
    (4, '2023-06-01', 7700.00),
    (5, '2023-06-01', 8000.00),
    (6, '2023-06-01', 7500.00),
    (7, '2023-06-01', 7400.00),
    (8, '2023-06-01', 7300.00);

#15 lote
INSERT INTO farmacia.lote (id_producto, cantidad, vencimiento) VALUES
    (1, 5, '2024-07-15'),
    (2, 3, '2024-09-30'),
    (3, 10, '2024-08-20'),
    (4, 2, '2024-06-10'),
    (5, 7, '2024-07-25'),
    (6, 4, '2024-09-05'),
    (7, 6, '2024-08-15'),
    (8, 8, '2024-07-01'),
    (9, 3, '2024-09-20'),
    (10, 9, '2024-08-30'),
    (11, 1, '2024-06-25'),
    (12, 5, '2024-07-10'),
    (13, 3, '2024-09-15'),
    (14, 7, '2024-08-05'),
    (15, 4, '2024-07-20'),
    (16, 6, '2024-09-02'),
    (17, 8, '2024-08-18'),
    (18, 3, '2024-07-05'),
    (19, 9, '2024-09-25'),
    (20, 2, '2024-08-27'),
    (21, 5, '2024-06-12'),
    (22, 3, '2024-07-28'),
    (23, 10, '2024-09-10'),
    (24, 2, '2024-08-22'),
    (25, 7, '2024-07-17'),
    (26, 4, '2024-09-08'),
    (27, 6, '2024-08-16'),
    (28, 8, '2024-07-03'),
    (29, 3, '2024-09-22'),
    (30, 9, '2024-08-25'),
    (31, 1, '2024-06-20'),
    (32, 5, '2024-07-08'),
    (33, 3, '2024-09-12'),
    (34, 7, '2024-08-03'),
    (35, 4, '2024-07-22'),
    (36, 6, '2024-09-04'),
    (37, 8, '2024-08-17'),
    (38, 3, '2024-07-04'),
    (39, 9, '2024-09-27'),
    (40, 2, '2024-08-28'),
    (61, 5, '2024-07-15'),
    (62, 3, '2024-09-30'),
    (63, 10, '2024-08-20'),
    (64, 2, '2024-06-10'),
    (65, 7, '2024-07-25'),
    (66, 4, '2024-09-05'),
    (67, 6, '2024-08-15'),
    (68, 8, '2024-07-01'),
    (69, 3, '2024-09-20'),
    (70, 9, '2024-08-30'),
    (71, 1, '2024-06-25'),
    (72, 5, '2024-07-10'),
    (73, 3, '2024-09-15'),
    (74, 7, '2024-08-05'),
    (75, 4, '2024-07-20'),
    (76, 6, '2024-09-02'),
    (77, 8, '2024-08-18'),
    (78, 3, '2024-07-05'),
    (79, 9, '2024-09-25'),
    (80, 2, '2024-08-27'),
    (81, 5, '2024-07-15'),
    (82, 3, '2024-09-30'),
    (83, 10, '2024-08-20'),
    (84, 2, '2024-06-10'),
    (85, 7, '2024-07-25'),
    (86, 4, '2024-09-05'),
    (87, 6, '2024-08-15'),
    (88, 8, '2024-07-01'),
    (89, 3, '2024-09-20'),
    (90, 9, '2024-08-30'),
    (91, 1, '2024-06-25'),
    (92, 5, '2024-07-10'),
    (93, 3, '2024-09-15'),
    (94, 7, '2024-08-05'),
    (95, 4, '2024-07-20'),
    (96, 6, '2024-09-02'),
    (97, 8, '2024-08-18'),
    (98, 3, '2024-07-05'),
    (99, 9, '2024-09-25'),
    (100, 2, '2024-08-27'),
    (101, 5, '2024-06-12'),
    (102, 3, '2024-07-28'),
    (103, 10, '2024-09-10'),
    (104, 2, '2024-08-22'),
    (105, 7, '2024-07-17'),
    (106, 4, '2024-09-08'),
    (107, 6, '2024-08-16'),
    (108, 8, '2024-07-03'),
    (109, 3, '2024-09-22'),
    (110, 9, '2024-08-25'),
    (111, 1, '2024-06-20'),
    (112, 5, '2024-07-08'),
    (113, 3, '2024-09-12'),
    (114, 7, '2024-08-03'),
    (115, 4, '2024-07-22'),
    (116, 6, '2024-09-04'),
    (117, 8, '2024-08-17'),
    (118, 3, '2024-07-04'),
    (119, 9, '2024-09-27'),
    (120, 2, '2024-08-28'),
    (121, 5, '2024-07-15'),
    (122, 3, '2024-09-30'),
    (123, 10, '2024-08-20'),
    (124, 2, '2024-06-10'),
    (125, 7, '2024-07-25'),
    (126, 4, '2024-09-05'),
    (127, 6, '2024-08-15'),
    (128, 8, '2024-07-01'),
    (129, 3, '2024-09-20'),
    (130, 9, '2024-08-30'),
    (131, 1, '2024-06-25'),
    (132, 5, '2024-07-10'),
    (133, 3, '2024-09-15'),
    (134, 7, '2024-08-05'),
    (135, 4, '2024-07-20'),
    (136, 6, '2024-09-02'),
    (137, 8, '2024-08-18'),
    (138, 3, '2024-07-05'),
    (139, 9, '2024-09-25'),
    (140, 2, '2024-08-27'),
    (141, 5, '2024-06-12'),
    (142, 3, '2024-07-28'),
    (143, 10, '2024-09-10'),
    (144, 2, '2024-08-22'),
    (145, 7, '2024-07-17'),
    (146, 4, '2024-09-08'),
    (147, 6, '2024-08-16'),
    (148, 8, '2024-07-03'),
    (149, 3, '2024-09-22'),
    (150, 9, '2024-08-25');
    
#16 registro
INSERT INTO farmacia.registro (id_empleado, id_sucursal, entrada, salida) VALUES
    (1, 1, '2023-06-01 08:15:00', '2023-06-01 20:20:00'),
    (2, 1, '2023-06-02 08:10:00', '2023-06-02 20:25:00'),
    (3, 2, '2023-06-03 08:25:00', '2023-06-03 20:20:00'),
    (4, 2, '2023-06-04 08:20:00', '2023-06-04 20:05:00'),
    (5, 3, '2023-06-05 08:05:00', '2023-06-05 20:30:00'),
    (6, 3, '2023-06-06 08:30:00', '2023-06-06 20:15:00'),
    (7, 4, '2023-06-07 08:15:00', '2023-06-07 20:20:00'),
    (8, 4, '2023-06-08 08:30:00', '2023-06-08 20:25:00'),
    (1, 1, '2023-06-09 08:10:00', '2023-06-09 20:30:00'),
    (2, 1, '2023-06-10 08:15:00', '2023-06-10 20:15:00'),
    (3, 2, '2023-06-11 08:25:00', '2023-06-11 20:20:00'),
    (4, 2, '2023-06-12 08:30:00', '2023-06-12 20:25:00'),
    (5, 3, '2023-06-13 08:05:00', '2023-06-13 20:20:00'),
    (6, 3, '2023-06-14 08:20:00', '2023-06-14 20:30:00'),
    (7, 4, '2023-06-15 08:30:00', '2023-06-15 20:15:00'),
    (8, 4, '2023-06-16 08:15:00', '2023-06-16 20:20:00'),
    (1, 1, '2023-06-17 08:20:00', '2023-06-17 20:25:00'),
    (2, 1, '2023-06-18 08:05:00', '2023-06-18 20:20:00'),
    (3, 2, '2023-06-19 08:15:00', '2023-06-19 20:30:00'),
    (4, 2, '2023-06-20 08:30:00', '2023-06-20 20:15:00'),
    (5, 3, '2023-06-21 08:25:00', '2023-06-21 20:20:00'),
    (6, 3, '2023-06-22 08:10:00', '2023-06-22 20:20:00'),
    (7, 4, '2023-06-23 08:20:00', '2023-06-23 20:30:00'),
    (8, 4, '2023-06-24 08:15:00', '2023-06-24 20:15:00');


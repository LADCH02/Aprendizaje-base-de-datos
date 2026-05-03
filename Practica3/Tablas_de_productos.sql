CREATE DATABASE sistema_inventario;

CREATE TABLE almacenes(
	id_almacen SERIAL PRIMARY KEY,
	nombre_almacen VARCHAR(50) NOT NULL,
	direccion_almacen VARCHAR(50),
	ciudad_almacen VARCHAR(50),
);

CREATE TABLE productos(
	id_producto SERIAL PRIMARY KEY,
	nombre_producto VARCHAR(50) NOT NULL,
);



CREATE TABLE inventario(
	id_inventario SERIAL PRIMARY KEY,
	id_producto INT REFERENCES productos(id_producto) ON DELETE CASCADE,
	id_almacen INT REFERENCES almacenes(id_almacen) ON DELETE CASCADE,
	cantidad INT NOT NULL CHECK (cantidad >= 0)
);

INSERT INTO almacenes (nombre_almacen,direccion_almacen,ciudad_almacen)
VALUES ('Almacen Central', 'Av.siempre viva 123', 'Ciudad de Mexico');

INSERT INTO(nombre_producto)
VALUES ('laptop pro'), ("Telefono");

INSERT INTO inventario(id_producto, id_almacen, cantidad)
VALUES (1,1,60),(2,1,100);



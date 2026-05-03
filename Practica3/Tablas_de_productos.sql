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
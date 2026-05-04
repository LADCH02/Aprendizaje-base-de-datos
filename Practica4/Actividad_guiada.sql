CREATE DATABASE empresa;

CREATE TABLE empleado(
	id_empleado SERIAL PRIMARY KEY,
	nombre_empleado VARCHAR(50) NOT NULL,
	puesto VARCHAR(50) NOT NULL,
	salario DECIMAL(12,4)
);

CREATE TABLE departamento(
	id_departamento SERIAL PRIMARY KEY,
	nombre_departamento VARCHAR(50)
);

ALTER TABLE empleado ADD COLUMN fecha_contratacion DATE;


CREATE TABLE prueba (id INT);
DROP TABLE prueba;

-- en el psql para ver las entidades creadas ponemos \dt
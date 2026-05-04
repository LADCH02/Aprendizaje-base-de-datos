CREATE DATABASE biblioteca;


CREATE TABLE autor (
    id_autor SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    nacionalidad VARCHAR(50)
);

CREATE TABLE libro (
    id_libro SERIAL PRIMARY KEY,
    titulo VARCHAR(150),
    isbn VARCHAR(20),
    anio_publicacion INT
);

CREATE TABLE libro_autor (
    id_libro INT REFERENCES libro(id_libro),
    id_autor INT REFERENCES autor(id_autor),
    PRIMARY KEY (id_libro, id_autor)
);

CREATE TABLE usuario (
    id_usuario SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE prestamo (
    id_prestamo SERIAL PRIMARY KEY,
    id_libro INT REFERENCES libro(id_libro),
    id_usuario INT REFERENCES usuario(id_usuario),
    fecha_salida DATE,
    fecha_devolucion DATE
);
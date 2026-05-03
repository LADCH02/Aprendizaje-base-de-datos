CREATE DATABASE escuela;


CREATE TABLE profesor(
	id_profesor SERIAL PRIMARY KEY,
	profesor_email VARCHAR(50) NOT NULL,
	nombre_profesor VARCHAR(50) NOT NULL
);

CREATE TABLE cursos(
	id_curso SERIAL PRIMARY KEY,
	id_profesor INT REFERENCES profesor(id_profesor) ON DELETE CASCADE,
	nombre_cursos VARCHAR(50) NOT NULL
);

CREATE TABLE estudiantes(
	id_estudiantes SERIAL PRIMARY KEY,
	nombre VARCHAR(50) NOT NULL,
	estudiante_email VARCHAR(50) NOT NULL,
);

CREATE TABLE inscipcion(
	id_inscripcion SERIAL PRIMARY KEY,
	id_cursos INT REFERENCES cursos(id_cursos) ON DELETE CASCADE,
	id_estudiantes INT REFERENCES estudiantes(id_estudiantes) ON DELETE CASCADE
);
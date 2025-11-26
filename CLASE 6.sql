/*CREATE table alumnos (
	id_alumno int(4) PRIMARY KEY AUTO_INCREMENT,
	nombre VARCHAR(80),
	apellido VARCHAR(60)
);
INSERT into alumnos 
(nombre, apellido)
VALUES
	('juan', 'perez'),
	('maria', 'gonzales');*/
	
	/*Le indicamos que es clave primaria, esto significa que el campo no va a poder ser nulo y por otro lado no se va arrepetir el dato en toda la tablña*/
	
INSERT INTO inscripciones 
(id_alumno,materia)
VALUES 
(100,'Matematicas'),
(102,'Historia'),
(100,'Bases de Datos');

INSERT INTO inscripciones 
(id_alumno,materia)
VALUES 
(25,'Matematicas');

DELETE FROM inscripciones WHERE  id_inscripciones=3;

--Agregar la relacion a la tabla creada
ALTER TABLE inscripciones 
ADD FOREIGN KEY (id_alumno) REFERENCES alumnos(id_alumno)
	
	
	
	
	
DROP DATABASE IF EXISTS libreria_cf;
CREATE DATABASE IF NOT EXISTS libreria_cf;

USE libreria_cf;

CREATE TABLE IF NOT EXISTS autores(
autor_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(25) NOT NULL,
apellido VARCHAR(25) NOT NULL,
seudonimo VARCHAR(50) UNIQUE,
genero ENUM('M', 'F'),
fecha_nacimiento DATE NOT NULL,
pais_origen VARCHAR(40) NOT NULL,
fecha_creacion DATETIME DEFAULT current_timestamp
);

CREATE TABLE libros( =
libro_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
autor_id INT UNSIGNED NOT NULL,
titulo VARCHAR(50) NOT NULL,
descripcion VARCHAR(250),
pagina INTEGER(50) UNSIGNED NOT NULL DEFAULT 0,
fecha_publicacion Date NOT NULL,
FOREIGN KEY (autor_id) REFERENCES autores (autor_id) ON DELETE CASCADE,
fecha_creacion DATETIME DEFAULT current_timestamp
);


ALTER TABLE libros ADD ventas INT UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE libros ADD stock INT UNSIGNED DEFAULT 10;

		INSERT INTO autores (nombre, apellido, seudonimo, fecha_nacimiento, genero, pais_origen)
VALUES  ('Stephen', 'Ewdin', 'King', '1947-09-27', 'M', 'USA'),
        ('Joanne', 'Rwling', 'J.k Rowling', '1947-09-27', 'F', 'Reino unido');

		INSERT INTO libros (autor_id, titulo ,fecha_publicacion)
VALUES  (1 ,'Carries', '1974-09-27'),
		(1 ,'El misterio de salme lot','1995-09-27'),
		(1 ,'El resplando', '1977-09-27'),
		(2 ,'Harry potter y la piedra Filosofa', '1997-06-30'),
		(2 ,'Harry potter y Camara secreta', '1998-07-2'),
	    (2 ,'Harry potter y el prisionero de azkaban' , '1999-06-8'),
		(2 ,'Harry potter y el caliz de fuego' , '2000-03-20'),
	    (2 ,'Harry potter y la orden de fenix' , '2003-06-21'),
	    (2 ,'Harry potter y el misterio del principe' , '2005-06-16'),
		(2 ,'Harry potter y las reliquias de la muerte' , '2007-07-21');



SELECT * FROM autores;
SELECT * FROM libros;


 SELECT titulo, fecha_publicacion FROM libros WHERE fecha_publicacion BETWEEN '1995-01-01' AND '2005-01-31';


SELECT * FROM libros WHERE titulo = 'Harry potter y la orden de fenix' OR titulo = 'Harry potter y el prisionero de azkaban';

SELECT * FROM libros WHERE titulo IN (
		'Harry potter y la piedra Filosofa',
		'Harry potter y Camara secreta',
		'Harry potter y el prisionero de azkaban',
		'Harry potter y el caliz de fuego',
		'Harry potter y la orden de fenix'
);



SELECT autor_id titulo FROM libros WHERE titulo LIKE 'H%' OR titulo LIKE 'L%';
SELECT autor_id titulo FROM libros WHERE LEFT (titulo, 1) = 'H' OR LEFT(titulo, 1) = 'L';

-- llevar un control de sentencias a llevar
/*¿ que tipos de entidades ? autores
Nombere : autores
*/
-- los datos que quiero almacenar son!


Nombere
Genero
Fecha de nacimiento
Pais de origen

/*siguinete paso la normalizacion*/
--1 generar la colummna y el tipo de datos
--2 para terminare de normalizar agregamos autor_id

--3 vamos a pasar nuestro ultimo paso generar nuestra tabla;
-- siguiendo la misma estructura---->

CREATE TABLE autores(
autor_id INT,
nombre VARCHAR(25),
apellido VARCHAR(25),
genero CHAR(1),
fecha_nacimiento DATE,
pais_origen VARCHAR(40)
);

ahora lo que se hace es una estructura de lo que deseamos en nuestra tabla y las llevamos a la conslola para generar la tabla;
/*
autor_id INT -- ESTA COLUMNA SOLO LAMACENARA NUMEROS ENTEROS
nombre VARCHAR(25) -- SOLO 50CARACTERES
apellido VARCHAR(25)
genero CHAR(1) -- CADENA ALFANUMERIACA DE 0 A 250 (M 0 F)
fecha_nacimento DATE
pais_origen VARCHAR(40) -- de longitud
*/

Tipos de datos
En general, la mayoría de los servidores de base de datos nos permiten almacenar los mismo tipo de datos, como strings, fechas y número.

En este post, listamos los tipos de datos que más utilizarás en tu día a día.

ALFANUMÉRICOS
CHAR
VARCHAR
En ambos casos nosotros debemos de especificar la longitud máxima que podrá almacenar el campo. Opcionalmente podemos definir el charset que almacenará.

varchar(20) character set utf8
Con MySQL nosotros podemos establecer el charset que usará la base de datos desde su creación create database nombre character set utf8;

NÚMEROS ENTEROS
Tipo	Rango
Tinyint	-128 a 127
Smallint	-32,768 a 32,767
Mediumint	−8,388,608 a 8,388,607
Int	−2,147,483,648 a 2,147,483,647
Bigint	−9,223,372,036,854,775,808 a 9,223,372,036,854,775,807
NÚMEROS FLOTANTES
Para los flotantes encontraremos dos tipos

Float
Double
En ambos casos nosotros debemos de especificar la cantidad de dígitos que almacenará la columna antes y después del punto (p,s)

precio FLOAT(3, 2)
En este caso la columna podrá almacenar hasta tres dígitos como enteros y dos después del punto decimal.

Ejemplo 999.99

TIEMPO
Tipo	Formato default
Date	YYYY-MM-DD
Datetime	YYYY-MM-DD HH:MI:SS
Timestamp	YYYY-MM-DD HH:MI:SS
Time	HHH:MI:SS



-- INSERTAR REGISTROS
--VAMOS A INSERTAR REGISTROS FIGTICIOS DE AUTORES
-- LA siguiendo estructura
--el orden es completamente irrelevante, pues pudiece colocar el orden que a vos le convenga
 INSERT INTO autores (autor_id, nombre, apellido, genero, fecha_nacimiento, pais_origen)
 -- EN VALUES SI ES IMPORTANTE EL ORDEN DEL INSERT INTO
 -- ejemplo si colocamos 2 columnas debemos colocar 2 valores
VALUES (1, 'Test autor', 'Test autor', 'M', 2021-01-30, 'venezuela');

 INSERT INTO autores (autor_id, nombre, apellido, genero, fecha_nacimiento, pais_origen)
VALUES (1, 'Test autor', 'Test autor', 'M', '2021-01-30', 'venezuela');

-- un nuevo registro

INSERT INTO autores (autor_id, nombre)
VALUES (1, 'Test autor');

--  varios registros


INSERT INTO autores (autor_id, nombre, apellido, genero, fecha_nacimiento, pais_origen)
VALUES (1, 'Test autor', 'Test autor', 'M', '2021-01-30', 'venezuela');

INSERT INTO autores (autor_id, nombre, apellido, genero, fecha_nacimiento, pais_origen)
VALUES (2, 'Test autor', 'Test autor', 'M', '2021-01-30', 'venezuela');
INSERT INTO autores (autor_id, nombre, apellido, genero, fecha_nacimiento, pais_origen)
VALUES (3, 'Test autor', 'Test autor', 'M', '2021-01-30', 'venezuela');
INSERT INTO autores (autor_id, nombre, apellido, genero, fecha_nacimiento, pais_origen)
VALUES (4, 'Test autor', 'Test autor', 'M', '2021-01-30', 'venezuela');
INSERT INTO autores (autor_id, nombre, apellido, genero, fecha_nacimiento, pais_origen)
VALUES (5, 'Test autor', 'Test autor', 'M', '2021-01-30', 'venezuela');

--el Performace no es el obtimo si queremos ingresar varios registro y aplicamos n de veces el insert por separado. vamos y veamos
-- haremos refactora a las varias lineas de codigos y a los varios registro tambien se les denomina dublas

INSERT INTO autores (autor_id, nombre, apellido, genero, fecha_nacimiento, pais_origen)
VALUES  (1, 'Test autor', 'Test autor', 'M', '2021-01-30', 'venezuela'),
        (2, 'Test autor', 'Test autor', 'M', '2021-01-30', 'venezuela'),
       (3, 'Test autor', 'Test autor', 'M', '2021-01-30', 'venezuela'),
	   (4, 'Test autor', 'Test autor', 'M', '2021-01-30', 'venezuela'),
	   (5, 'Test autor', 'Test autor', 'M', '2021-01-30', 'venezuela');
	   -- esta seraia nuestra forma de armar las sentencias o duplas de datos con un solo INSERT INTO

-- LA DESVENTAJA ES QUE UNA VEZ FINALIZADA LA SECCION TODO LAS SENTENCIAS YA SE HABALAN PERDIDO POR QUE LUEGO SE INICIA UNA NUEVA SECION,
 --   Y PARA ESO SE GUARDAN LAS CVONSULTA DE SENTENCIAS EN DOC.sql



--bien ahora incorporamos sentencias unidad que serian estas
ELIMININO
DROP DATABASE libreria_cf;
CREO
CREATE DATABASE libreria_cf;
USO
USE libreria_cf;

-- EN ESTA SENTENCIAS YA SE USARIAS VARIAS EN UNA
-- CON MAYOR PERFORMACE

DROP DATABASE libreria_cf;
CREATE DATABASE libreria_cf;

USE libreria_cf;
CREATE TABLE autores(
autor_id INT,
nombre VARCHAR(25),
apellido VARCHAR(25),
genero CHAR(1),
fecha_nacimiento DATE,
pais_origen VARCHAR(40)
);

INSERT INTO autores (autor_id, nombre, apellido, genero, fecha_nacimiento, pais_origen)
VALUES  (1, 'Test autor', 'Test autor', 'M', '2021-01-30', 'venezuela'),
        (2, 'Test autor', 'Test autor', 'M', '2021-01-30', 'venezuela'),
       (3, 'Test autor', 'Test autor', 'M', '2021-01-30', 'venezuela'),
	   (4, 'Test autor', 'Test autor', 'M', '2021-01-30', 'venezuela'),
	   (5, 'Test autor', 'Test autor', 'M', '2021-01-30', 'venezuela');

SELECT * FROM autores;

-- y esta es la forma de la que podemos ejecutar un archivo punto sql
--ejecutando sentecias desde archivos sql


-- imciamos nuevamnete el terminar


mysql -u root -p


-- se crear quitando el local y o dependiendo de donde se encuentre de archivo o por ruta de ubicacion del mismo

 -- y con la (u )en minuscula

mysql> SOURCE /users/TATIANA/Desktop/Escritorio 2021-2022/Cursos de codigo facilito/Bases de datos/senten.sql;
Query OK, 1 row affected (0.96 sec)

Query OK, 1 row affected (0.24 sec)

Database changed
Query OK, 0 rows affected (3.84 sec)

Query OK, 5 rows affected (0.26 sec)
Records: 5  Duplicates: 0  Warnings: 0

+----------+------------+------------+--------+------------------+-------------+
| autor_id | nombre     | apellido   | genero | fecha_nacimiento | pais_origen |
+----------+------------+------------+--------+------------------+-------------+
|        1 | Test autor | Test autor | M      | 2021-01-30       | venezuela   |
|        2 | Test autor | Test autor | M      | 2021-01-30       | venezuela   |
|        3 | Test autor | Test autor | M      | 2021-01-30       | venezuela   |
|        4 | Test autor | Test autor | M      | 2021-01-30       | venezuela   |
|        5 | Test autor | Test autor | M      | 2021-01-30       | venezuela   |
+----------+------------+------------+--------+------------------+-------------+
5 rows in set (0.00 sec)

mysql>

-- ya la habia eliminando y me manda un mensaje que no exitse y continua con las sentencias


-- -      --•••    CONDICION DE SENTENCIA




mysql> SOURCE /users/TATIANA/Desktop/Escritorio 2021-2022/Cursos de codigo facilito/Bases de datos/senten.sql;
ERROR 1008 (HY000): Can't drop database 'libreria_cf'; database doesn't exist
Query OK, 1 row affected (0.19 sec)

Database changed
Query OK, 0 rows affected (2.44 sec)

Query OK, 5 rows affected (0.24 sec)
Records: 5  Duplicates: 0  Warnings: 0

+----------+------------+------------+--------+------------------+-------------+
| autor_id | nombre     | apellido   | genero | fecha_nacimiento | pais_origen |
+----------+------------+------------+--------+------------------+-------------+
|        1 | Test autor | Test autor | M      | 2021-01-30       | venezuela   |
|        2 | Test autor | Test autor | M      | 2021-01-30       | venezuela   |
|        3 | Test autor | Test autor | M      | 2021-01-30       | venezuela   |
|        4 | Test autor | Test autor | M      | 2021-01-30       | venezuela   |
|        5 | Test autor | Test autor | M      | 2021-01-30       | venezuela   |
+----------+------------+------------+--------+------------------+-------------+
5 rows in set (0.00 sec)

DROP DATABASE libreria_cf;
-- condicionamos la linea 1
CREATE DATABASE libreria_cf;
con IF EXISTS

USE libreria_cf;
CREATE TABLE autores(
autor_id INT,
nombre VARCHAR(25),
apellido VARCHAR(25),
genero CHAR(1),
fecha_nacimiento DATE,
pais_origen VARCHAR(40)
);

INSERT INTO autores (autor_id, nombre, apellido, genero, fecha_nacimiento, pais_origen)
VALUES  (1, 'Test autor', 'Test autor', 'M', '2021-01-30', 'venezuela'),
        (2, 'Test autor', 'Test autor', 'M', '2021-01-30', 'venezuela'),
       (3, 'Test autor', 'Test autor', 'M', '2021-01-30', 'venezuela'),
	   (4, 'Test autor', 'Test autor', 'M', '2021-01-30', 'venezuela'),
	   (5, 'Test autor', 'Test autor', 'M', '2021-01-30', 'venezuela');

SELECT * FROM autores;




--LA ELIMINAMOS Y LA VOLVEMOS A CREAR Y YA NO VIENE NINGUN ERROR!

mysql> SOURCE /users/TATIANA/Desktop/Escritorio 2021-2022/Cursos de codigo facilito/Bases de datos/senten.sql;
Query OK, 0 rows affected, 1 warning (0.07 sec)

Query OK, 1 row affected (0.13 sec)

Database changed
Query OK, 0 rows affected (1.94 sec)

Query OK, 5 rows affected (0.32 sec)
Records: 5  Duplicates: 0  Warnings: 0

+----------+------------+------------+--------+------------------+-------------+
| autor_id | nombre     | apellido   | genero | fecha_nacimiento | pais_origen |
+----------+------------+------------+--------+------------------+-------------+
|        1 | Test autor | Test autor | M      | 2021-01-30       | venezuela   |
|        2 | Test autor | Test autor | M      | 2021-01-30       | venezuela   |
|        3 | Test autor | Test autor | M      | 2021-01-30       | venezuela   |
|        4 | Test autor | Test autor | M      | 2021-01-30       | venezuela   |
|        5 | Test autor | Test autor | M      | 2021-01-30       | venezuela   |
+----------+------------+------------+--------+------------------+-------------+
5 rows in set (0.00 sec)

mysql>



-- LAS CONDICIONES SON TANTO PARA DATABASE COMO PARA TABLAS//

-- cerrmos cesion y ahora tenemos! un comando que sin iniciar secion al server podemos info
--

-- RESTRICNCIONES

-- PRUEBAS DE QUE CUANDO COLOCAS UN TIPO DE DATO ENTERO NO PUEDES AGRGARLE UN strings
--  YA QUE SERIA EL CONTRAINS Y SI INGRESAS DATOS VACIOS A UNA TABLAS SE AGREGAN DE TIPO NULL

EJEMPO
INSERT INTO autores () VALUES ();

mysql> INSERT INTO autores () VALUES ();
Query OK, 1 row affected (0.16 sec)

y su salida
 sera :

 |     NULL | NULL       | NULL       | NULL   | NULL             | NULL        |
+----------+------------+------------+--------+------------------+-------------+
6 rows in set (0.05 sec)

mysql>



VALORES UNICOS Y NULOS;

Ejemplo


ysql> INSERT INTO autores (autor_id, genero, fecha_nacimiento, pais_origen)
    -> VALUES   (10, 'M', '2021-01-30', 'venezuela');
ERROR 1364 (HY000): Field 'nombre' doesn't have a default value
mysql>

RESTRINGE QUE EL CAMPO NONBRE NO SE HA NULO
POR ESE HECHO MANDA EL ERROR


















-- la condicionamos que nos elimine la base de datos si esta existe con un if exits
--IF NOT EXISTS SI NO EXITES TAMBIEN TANTO PARA UN TABALA COMO PARA UNA BASE DE DATOS
-------------------------- IF NOT EXISTS
---------------------------IF EXISTS
-- CONDICIONES




-- DROP DATABASE IF EXISTS libreria_cf;
--INDICAR QUE SE CREEE LA BASE DE DATOS SI NO EXISTE
-- CREATE DATABASE IF NOT EXISTS libreria_cf;
-- USE libreria_cf;
-- SINO EXITE LA TABLA DE AUTORES CREALA
-- CREATE TABLE IF NOT EXISTS autores(
-- autor_id INT,
-- nombre VARCHAR(25),
-- apellido VARCHAR(25),
-- genero CHAR(1),
-- fecha_nacimiento DATE,
-- pais_origen VARCHAR(40)
-- );

-- INSERT INTO autores (autor_id, nombre, apellido, genero, fecha_nacimiento, pais_origen)
-- VALUES  (1, 'Test autor', 'Test autor', 'M', '2021-01-30', 'venezuela'),
--         (2, 'Test autor', 'Test autor', 'M', '2021-01-30', 'venezuela'),
--        (3, 'Test autor', 'Test autor', 'M', '2021-01-30', 'venezuela'),
-- 	   (4, 'Test autor', 'Test autor', 'M', '2021-01-30', 'venezuela'),
-- 	   (5, 'Test autor', 'Test autor', 'M', '2021-01-30', 'venezuela');

-- SELECT * FROM autores;
-- LAS CONDICIONES SON TANTO PARA DATABASE COMO PARA TABLAS//

-- cerrmos cesion y ahora tenemos! un comando que sin iniciar secion al server podemos info
--







--Valores unicos y constrains que no se han nulos n












-- DROP DATABASE IF EXISTS libreria_cf;
-- CREATE DATABASE IF NOT EXISTS libreria_cf;

-- USE libreria_cf;
-- CREATE TABLE IF NOT EXISTS autores(
-- autor_id INT,
-- nombre VARCHAR(25) NOT NULL, -- QUE NO PUEDE SER NULO Y SI SE INGRE SIN NOMBRE OPTENEMOS UN ERROR
-- apellido VARCHAR(25),
-- seudonimo VARCHAR(50) UNIQUE,
-- genero CHAR(1),
-- fecha_nacimiento DATE,
-- pais_origen VARCHAR(40)
-- );

-- INSERT INTO autores (autor_id, nombre, apellido, genero, fecha_nacimiento, pais_origen)
-- VALUES  (1, 'Test autor', 'Test autor', 'M', '2021-01-30', 'venezuela'),
--         (2, 'Test autor', 'Test autor', 'M', '2021-01-30', 'venezuela'),
--        (3, 'Test autor', 'Test autor', 'M', '2021-01-30', 'venezuela'),
-- 	   (4, 'Test autor', 'Test autor', 'M', '2021-01-30', 'venezuela'),
-- 	   (5, 'Test autor', 'Test autor', 'M', '2021-01-30', 'venezuela');
/* INSERT INTO autores (autor_id, nombre, apellido, seudonimo, fecha_nacimiento, genero, pais_origen)
VALUES  (10, 'Stephen', 'Ewdin', 'King', '1947-09-27', 'M', 'USA');*/

		/*INSERT INTO autores (autor_id, genero, fecha_nacimiento, pais_origen)
VALUES   (10, 'M', '2021-01-30', 'venezuela');   */

--  SELECT * FROM autores;


+----------+--------+----------+--------+------------------+-------------+
| autor_id | nombre | apellido | genero | fecha_nacimiento | pais_origen |
+----------+--------+----------+--------+------------------+-------------+
|        1 | HENRY  | MORENO   | M      | 2021-01-30       | venezuela   |
|        2 | HENRY  | MORENO   | M      | 2021-01-30       | venezuela   |
|        3 | HENRY  | MORENO   | M      | 2021-01-30       | venezuela   |
|        4 | HENRY  | MORENO   | M      | 2021-01-30       | venezuela   |
|        5 | HENRY  | MORENO   | M      | 2021-01-30       | venezuela   |
+----------+--------+----------+--------+------------------+-------------+
5 rows in set (0.00 sec)

mysql> SOURCE /users/TATIANA/Desktop/Escritorio 2021-2022/Cursos de codigo facilito/Bases de datos/senten.sql;
Query OK, 1 row affected (0.83 sec)

Query OK, 1 row affected (0.19 sec)

Database changed
Query OK, 0 rows affected (0.96 sec)

Query OK, 5 rows affected (0.20 sec)
Records: 5  Duplicates: 0  Warnings: 0

+----------+--------+----------+--------+------------------+-------------+
| autor_id | nombre | apellido | genero | fecha_nacimiento | pais_origen |
+----------+--------+----------+--------+------------------+-------------+
|        1 | HENRY  | MORENO   | M      | 2021-01-30       | venezuela   |
|        2 | HENRY  | MORENO   | M      | 2021-01-30       | venezuela   |
|        3 | HENRY  | MORENO   | M      | 2021-01-30       | venezuela   |
|        4 | HENRY  | MORENO   | M      | 2021-01-30       | venezuela   |
|        5 | HENRY  | MORENO   | M      | 2021-01-30       | venezuela   |
+----------+--------+----------+--------+------------------+-------------+
5 rows in set (0.00 sec)

mysql>


DROP DATABASE IF EXISTS libreria_cf;
CREATE DATABASE IF NOT EXISTS libreria_cf;

USE libreria_cf;
CREATE TABLE IF NOT EXISTS autores(
autor_id INT NOT NULL,
nombre VARCHAR(25) NOT NULL,
apellido VARCHAR(25) NOT NULL,
seudonimo VARCHAR(50) UNIQUE,
genero CHAR(1) NOT NULL,
fecha_nacimiento DATE NOT NULL,
pais_origen VARCHAR(40) NOT NULL
);

INSERT INTO autores (autor_id, nombre, apellido, genero, fecha_nacimiento, pais_origen)
VALUES   (1, 'HENRY', 'MORENO', 'M', '2021-01-30', 'venezuela'),
         (2, 'HENRY', 'MORENO', 'M', '2021-01-30', 'venezuela'),
        (3, 'HENRY',  'MORENO', 'M', '2021-01-30', 'venezuela'),
	    (4, 'HENRY',  'MORENO', 'M', '2021-01-30', 'venezuela'),
	    ( 5, 'HENRY', 'MORENO', 'M', '2021-01-30', 'venezuela');
		INSERT INTO autores (autor_id, nombre, apellido, seudonimo, fecha_nacimiento, genero, pais_origen)
VALUES  (10, 'Stephen', 'Ewdin', 'King', '1947-09-27', 'M', 'USA');

 SELECT * FROM autores;

DROP DATABASE IF EXISTS libreria_cf;
CREATE DATABASE IF NOT EXISTS libreria_cf;

USE libreria_cf;
CREATE TABLE IF NOT EXISTS autores(
autor_id INT NOT NULL,
nombre VARCHAR(25) NOT NULL,
apellido VARCHAR(25) NOT NULL,
seudonimo VARCHAR(50) UNIQUE,
genero CHAR(1) NOT NULL,
fecha_nacimiento DATE NOT NULL,
pais_origen VARCHAR(40) NOT NULL,
fecha_creacion DATETIME DEFAULT current_timestamp -- con esta propiedad vemos que anque no ha sido definido un valor el current_timestamp me agrega el valor de fecha horas, minutos y segundos exatos de la creacion del registro

);


		INSERT INTO autores (autor_id, nombre, apellido, seudonimo, fecha_nacimiento, genero, pais_origen)
VALUES  (10, 'Stephen', 'Ewdin', 'King', '1947-09-27', 'M', 'USA');

 SELECT * FROM autores;




LLAVES FORANEAS


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

CREATE TABLE libros(
libro_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
autor_id INT UNSIGNED NOT NULL, --LLAVE FORANEA LUEGO DE LA PRIMARY KEY  POR TEMAS DE ESTETICA
titulo VARCHAR(25) NOT NULL,
descripcion VARCHAR(250),
pagina INTEGER(50) UNSIGNED,
fecha_publicacion Date NOT NULL,
fecha_creacion DATETIME DEFAULT current_timestamp,
FOREIGN KEY (autor_id) REFERENCES autores (autor_id)/* RELACION DE MUCHOS A UNO CLAVE FORANIA DE RELACION HACIENDO REFERENCIA A LA TABLA AUTORES AL CAMPO AUTOR_ID*/

);


		INSERT INTO autores (nombre, apellido, seudonimo, fecha_nacimiento, genero, pais_origen)
VALUES  ('Stephen', 'Ewdin', 'King', '1947-09-27', 'M', 'USA'),
        ('Joanne', 'Rwling', 'J.k Rowling', '1947-09-27', 'F', 'Reino unido');

 SELECT * FROM autores;




 2 rows in set (0.00 sec)

mysql> SHOW TABLES;
+-----------------------+
| Tables_in_libreria_cf |
+-----------------------+
| autores               |
| libros                |
+-----------------------+
2 rows in set (0.85 sec)

mysql>




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

CREATE TABLE libros(
libro_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
autor_id INT UNSIGNED NOT NULL,
titulo VARCHAR(25) NOT NULL,
descripcion VARCHAR(250),
pagina INTEGER(50) UNSIGNED,
fecha_publicacion Date NOT NULL,
fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP,
FOREIGN KEY (autor_id) REFERENCES autores (autor_id)
);

		INSERT INTO autores(nombre, apellido, seudonimo, fecha_nacimiento, genero, pais_origen)
VALUES  ('Stephen', 'Ewdin', 'King', '1947-09-27', 'M', 'USA'),
        ('Joanne', 'Rwling', 'J.k Rowling', '1947-09-27', 'F', 'Reino unido');
/*y tres para el autor con id 1 */
		INSERT INTO libros(autor_id, titulo,fecha_publicacion pais_origen)
VALUES  (1 ,'Carries', '1947-09-27'),
		(1 ,'El misterio de salme lot', '1995-09-27'),
		(1 ,'El resplando', '1977-09-27'),
/*7 registros para el autor con id 2 */
		(2 ,'Harry potter y la piedra Filosofa', '1997-06-30'),
		(2 ,'Harry potter y Camara secreta', '1998-07-2'),
	   (2 ,'Harry potter y el prisionero de azkaban', '1999-06-8'),
		(2 ,'Harry potter y el caliz de fuego', '2000-03-20'),
	   (2 ,'Harry potter y la orden de fenix', '2003-06-21'),
		(2 ,'Harry potter y el misterio del principe', '2005-06-16'),
		(2 ,'Harry potter y las reliquias de la muerte', '2007-07-21'),





mysql> SOURCE /users/TATIANA/Desktop/Escritorio 2021-2022/Cursos de codigo facilito/Bases de datos/senten.sql
Query OK, 2 rows affected (2.89 sec)

Query OK, 1 row affected (0.27 sec)

Database changed
Query OK, 0 rows affected (1.61 sec)

Query OK, 0 rows affected, 1 warning (1.28 sec)

Query OK, 2 rows affected (0.27 sec)
Records: 2  Duplicates: 0  Warnings: 0

Query OK, 10 rows affected (0.32 sec)
Records: 10  Duplicates: 0  Warnings: 0

+----------+---------+----------+-------------+--------+------------------+-------------+---------------------+
| autor_id | nombre  | apellido | seudonimo   | genero | fecha_nacimiento | pais_origen | fecha_creacion      |
+----------+---------+----------+-------------+--------+------------------+-------------+---------------------+
|        1 | Stephen | Ewdin    | King        | M      | 1947-09-27       | USA         | 2021-11-26 12:07:48 |
|        2 | Joanne  | Rwling   | J.k Rowling | F      | 1947-09-27       | Reino unido | 2021-11-26 12:07:48 |
+----------+---------+----------+-------------+--------+------------------+-------------+---------------------+
2 rows in set (0.00 sec)

+----------+----------+-------------------------------------------+-------------+--------+-------------------+
| libro_id | autor_id | titulo                                    | descripcion | pagina | fecha_publicacion |
+----------+----------+-------------------------------------------+-------------+--------+-------------------+
|        1 |        1 | Carries                                   | NULL        |   NULL | 1974-09-27        |
|        2 |        1 | El misterio de salme lot                  | NULL        |   NULL | 1995-09-27        |
|        3 |        1 | El resplando                              | NULL        |   NULL | 1977-09-27        |
|        4 |        2 | Harry potter y la piedra Filosofa         | NULL        |   NULL | 1997-06-30        |
|        5 |        2 | Harry potter y Camara secreta             | NULL        |   NULL | 1998-07-02        |
|        6 |        2 | Harry potter y el prisionero de azkaban   | NULL        |   NULL | 1999-06-08        |
|        7 |        2 | Harry potter y el caliz de fuego          | NULL        |   NULL | 2000-03-20        |
|        8 |        2 | Harry potter y la orden de fenix          | NULL        |   NULL | 2003-06-21        |
|        9 |        2 | Harry potter y el misterio del principe   | NULL        |   NULL | 2005-06-16        |
|       10 |        2 | Harry potter y las reliquias de la muerte | NULL        |   NULL | 2007-07-21        |
+----------+----------+-------------------------------------------+-------------+--------+-------------------+
10 rows in set (0.00 sec)








 SELECT * FROM autores;



mysql> DESC libros;
+-------------------+--------------+------+-----+---------+----------------+
| Field             | Type         | Null | Key | Default | Extra          |
+-------------------+--------------+------+-----+---------+----------------+
| libro_id          | int unsigned | NO   | PRI | NULL    | auto_increment |
| autor_id          | int unsigned | NO   | MUL | NULL    |                |
| titulo            | varchar(50)  | NO   |     | NULL    |                |
| descripcion       | varchar(250) | YES  |     | NULL    |                |
| pagina            | int unsigned | YES  |     | NULL    |                |
| fecha_publicacion | date         | NO   |     | NULL    |                |
+-------------------+--------------+------+-----+---------+----------------+
6 rows in set (0.08 sec)

mysql>



Implementación de restricciones
VALORES ÚNICOS
Como sabemos, si nosotros necesitamos validar valores únicos usaremos el constraint UNIQUE.

CREATE TABLE usuarios(
  usuario_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(50) UNIQUE
);
Otra forma de expresarlo, es de la siguiente manera.

CREATE TABLE usuarios(
  usuario_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(50),
  CONSTRAINT UNIQUE (nombre)
);
La palabra CONSTRAINT es opcional, sin embargo, por temas de legibilidad recomiendo colocarla.

VALORES MÚTIPLES COLUMNAS
Si necesitamos validar el valor único de una combinación de columnas lo haremos de la siguiente manera.

En este caso queremos validar que la combinación de nombre, apellido y matricula sean unicas en la tabla.

CREATE TABLE usuarios(
  usuario_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(50),
  apellido VARCHAR(50),
  matricula VARCHAR(10),
  CONSTRAINT unique_combinacion UNIQUE (nombre, apellido, matricula),
  PRIMARY KEY (usuario_id)
);
LLAVES PRIMARIAS
Existen un par de formas con las cuales nosotros podemos definir un campo como una llave primaria.

CREATE TABLE usuarios(
  usuario_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT
);
o

CREATE TABLE usuarios(
  usuario_id INT UNSIGNED AUTO_INCREMENT,
  PRIMARY KEY(usuario_id)
);
En ambos casos el resultado es el mismo.



Modificar tablas;
Modificar tablas


mysql> ALTER TABLE libros ADD ventas INT UNSIGNED NOT NULL;
Query OK, 0 rows affected (1.45 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql>



mysql> ALTER TABLE libros ADD ventas INT UNSIGNED NOT NULL;
Query OK, 0 rows affected (1.45 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESC libros;
+-------------------+--------------+------+-----+-------------------+-------------------+
| Field             | Type         | Null | Key | Default           | Extra             |
+-------------------+--------------+------+-----+-------------------+-------------------+
| libro_id          | int unsigned | NO   | PRI | NULL              | auto_increment    |
| autor_id          | int unsigned | NO   | MUL | NULL              |                   |
| titulo            | varchar(50)  | NO   |     | NULL              |                   |
| descripcion       | varchar(250) | YES  |     | NULL              |                   |
| pagina            | int unsigned | YES  |     | NULL              |                   |
| fecha_publicacion | date         | NO   |     | NULL              |                   |
| fecha_creacion    | datetime     | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
| ventas            | int unsigned | NO   |     | NULL              |                   |
+-------------------+--------------+------+-----+-------------------+-------------------+
8 rows in set (0.07 sec)

mysql>



mysql> ALTER TABLE libros ADD ventas INT UNSIGNED NOT NULL;
Query OK, 0 rows affected (1.45 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESC libros;
+-------------------+--------------+------+-----+-------------------+-------------------+
| Field             | Type         | Null | Key | Default           | Extra             |
+-------------------+--------------+------+-----+-------------------+-------------------+
| libro_id          | int unsigned | NO   | PRI | NULL              | auto_increment    |
| autor_id          | int unsigned | NO   | MUL | NULL              |                   |
| titulo            | varchar(50)  | NO   |     | NULL              |                   |
| descripcion       | varchar(250) | YES  |     | NULL              |                   |
| pagina            | int unsigned | YES  |     | NULL              |                   |
| fecha_publicacion | date         | NO   |     | NULL              |                   |
| fecha_creacion    | datetime     | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
| ventas            | int unsigned | NO   |     | NULL              |                   |
+-------------------+--------------+------+-----+-------------------+-------------------+
8 rows in set (0.07 sec)

mysql> SELECT * FROM libros;
+----------+----------+-------------------------------------------+-------------+--------+-------------------+---------------------+--------+
| libro_id | autor_id | titulo                                    | descripcion | pagina | fecha_publicacion | fecha_creacion      | ventas |
+----------+----------+-------------------------------------------+-------------+--------+-------------------+---------------------+--------+
|        1 |        1 | Carries                                   | NULL        |   NULL | 1974-09-27        | 2021-11-26 12:49:26 |      0 |
|        2 |        1 | El misterio de salme lot                  | NULL        |   NULL | 1995-09-27        | 2021-11-26 12:49:26 |      0 |
|        3 |        1 | El resplando                              | NULL        |   NULL | 1977-09-27        | 2021-11-26 12:49:26 |      0 |
|        4 |        2 | Harry potter y la piedra Filosofa         | NULL        |   NULL | 1997-06-30        | 2021-11-26 12:49:26 |      0 |
|        5 |        2 | Harry potter y Camara secreta             | NULL        |   NULL | 1998-07-02        | 2021-11-26 12:49:26 |      0 |
|        6 |        2 | Harry potter y el prisionero de azkaban   | NULL        |   NULL | 1999-06-08        | 2021-11-26 12:49:26 |      0 |
|        7 |        2 | Harry potter y el caliz de fuego          | NULL        |   NULL | 2000-03-20        | 2021-11-26 12:49:26 |      0 |
|        8 |        2 | Harry potter y la orden de fenix          | NULL        |   NULL | 2003-06-21        | 2021-11-26 12:49:26 |      0 |
|        9 |        2 | Harry potter y el misterio del principe   | NULL        |   NULL | 2005-06-16        | 2021-11-26 12:49:26 |      0 |
|       10 |        2 | Harry potter y las reliquias de la muerte | NULL        |   NULL | 2007-07-21        | 2021-11-26 12:49:26 |      0 |
+----------+----------+-------------------------------------------+-------------+--------+-------------------+---------------------+--------+
10 rows in set (0.00 sec)

mysql>


mysql> ALTER TABLE libros ADD stock INT UNSIGNED NOT NULL DEFAULT 10;
Query OK, 0 rows affected (0.59 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM libros;
+----------+----------+-------------------------------------------+-------------+--------+-------------------+---------------------+--------+-------+
| libro_id | autor_id | titulo                                    | descripcion | pagina | fecha_publicacion | fecha_creacion      | ventas | stock |
+----------+----------+-------------------------------------------+-------------+--------+-------------------+---------------------+--------+-------+
|        1 |        1 | Carries                                   | NULL        |   NULL | 1974-09-27        | 2021-11-26 12:49:26 |      0 |    10 |
|        2 |        1 | El misterio de salme lot                  | NULL        |   NULL | 1995-09-27        | 2021-11-26 12:49:26 |      0 |    10 |
|        3 |        1 | El resplando                              | NULL        |   NULL | 1977-09-27        | 2021-11-26 12:49:26 |      0 |    10 |
|        4 |        2 | Harry potter y la piedra Filosofa         | NULL        |   NULL | 1997-06-30        | 2021-11-26 12:49:26 |      0 |    10 |
|        5 |        2 | Harry potter y Camara secreta             | NULL        |   NULL | 1998-07-02        | 2021-11-26 12:49:26 |      0 |    10 |
|        6 |        2 | Harry potter y el prisionero de azkaban   | NULL        |   NULL | 1999-06-08        | 2021-11-26 12:49:26 |      0 |    10 |
|        7 |        2 | Harry potter y el caliz de fuego          | NULL        |   NULL | 2000-03-20        | 2021-11-26 12:49:26 |      0 |    10 |
|        8 |        2 | Harry potter y la orden de fenix          | NULL        |   NULL | 2003-06-21        | 2021-11-26 12:49:26 |      0 |    10 |
|        9 |        2 | Harry potter y el misterio del principe   | NULL        |   NULL | 2005-06-16        | 2021-11-26 12:49:26 |      0 |    10 |
|       10 |        2 | Harry potter y las reliquias de la muerte | NULL        |   NULL | 2007-07-21        | 2021-11-26 12:49:26 |      0 |    10 |
+----------+----------+-------------------------------------------+-------------+--------+-------------------+---------------------+--------+-------+
10 rows in set (0.05 sec)

mysql>





eliminar una columna


mysql> ALTER TABLE libros DROP  COLUMN stock;
Query OK, 0 rows affected (5.08 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql>


mysql> ALTER TABLE libros DROP  COLUMN stock;
Query OK, 0 rows affected (5.08 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM libros;
+----------+----------+-------------------------------------------+-------------+--------+-------------------+---------------------+--------+
| libro_id | autor_id | titulo                                    | descripcion | pagina | fecha_publicacion | fecha_creacion      | ventas |
+----------+----------+-------------------------------------------+-------------+--------+-------------------+---------------------+--------+
|        1 |        1 | Carries                                   | NULL        |   NULL | 1974-09-27        | 2021-11-26 12:49:26 |      0 |
|        2 |        1 | El misterio de salme lot                  | NULL        |   NULL | 1995-09-27        | 2021-11-26 12:49:26 |      0 |
|        3 |        1 | El resplando                              | NULL        |   NULL | 1977-09-27        | 2021-11-26 12:49:26 |      0 |
|        4 |        2 | Harry potter y la piedra Filosofa         | NULL        |   NULL | 1997-06-30        | 2021-11-26 12:49:26 |      0 |
|        5 |        2 | Harry potter y Camara secreta             | NULL        |   NULL | 1998-07-02        | 2021-11-26 12:49:26 |      0 |
|        6 |        2 | Harry potter y el prisionero de azkaban   | NULL        |   NULL | 1999-06-08        | 2021-11-26 12:49:26 |      0 |
|        7 |        2 | Harry potter y el caliz de fuego          | NULL        |   NULL | 2000-03-20        | 2021-11-26 12:49:26 |      0 |
|        8 |        2 | Harry potter y la orden de fenix          | NULL        |   NULL | 2003-06-21        | 2021-11-26 12:49:26 |      0 |
|        9 |        2 | Harry potter y el misterio del principe   | NULL        |   NULL | 2005-06-16        | 2021-11-26 12:49:26 |      0 |
|       10 |        2 | Harry potter y las reliquias de la muerte | NULL        |   NULL | 2007-07-21        | 2021-11-26 12:49:26 |      0 |
+----------+----------+-------------------------------------------+-------------+--------+-------------------+---------------------+--------+
10 rows in set (0.00 sec)

mysql>

mysql> ALTER TABLE libros DROP  COLUMN stock;
Query OK, 0 rows affected (5.08 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM libros;
+----------+----------+-------------------------------------------+-------------+--------+-------------------+---------------------+--------+
| libro_id | autor_id | titulo                                    | descripcion | pagina | fecha_publicacion | fecha_creacion      | ventas |
+----------+----------+-------------------------------------------+-------------+--------+-------------------+---------------------+--------+
|        1 |        1 | Carries                                   | NULL        |   NULL | 1974-09-27        | 2021-11-26 12:49:26 |      0 |
|        2 |        1 | El misterio de salme lot                  | NULL        |   NULL | 1995-09-27        | 2021-11-26 12:49:26 |      0 |
|        3 |        1 | El resplando                              | NULL        |   NULL | 1977-09-27        | 2021-11-26 12:49:26 |      0 |
|        4 |        2 | Harry potter y la piedra Filosofa         | NULL        |   NULL | 1997-06-30        | 2021-11-26 12:49:26 |      0 |
|        5 |        2 | Harry potter y Camara secreta             | NULL        |   NULL | 1998-07-02        | 2021-11-26 12:49:26 |      0 |
|        6 |        2 | Harry potter y el prisionero de azkaban   | NULL        |   NULL | 1999-06-08        | 2021-11-26 12:49:26 |      0 |
|        7 |        2 | Harry potter y el caliz de fuego          | NULL        |   NULL | 2000-03-20        | 2021-11-26 12:49:26 |      0 |
|        8 |        2 | Harry potter y la orden de fenix          | NULL        |   NULL | 2003-06-21        | 2021-11-26 12:49:26 |      0 |
|        9 |        2 | Harry potter y el misterio del principe   | NULL        |   NULL | 2005-06-16        | 2021-11-26 12:49:26 |      0 |
|       10 |        2 | Harry potter y las reliquias de la muerte | NULL        |   NULL | 2007-07-21        | 2021-11-26 12:49:26 |      0 |
+----------+----------+-------------------------------------------+-------------+--------+-------------------+---------------------+--------+
10 rows in set (0.00 sec)

mysql>




Modificar tablas
Nosotros podemos modificar la definición de una tabla una vez esta se haya creado, para ello, nos apoyaremos de la sentencia ALTER TABLE.

Aquí un listado de algunas modificaciones que podemos realizar (Las más comunes).

Renombrar tabla.

Renombrar la tabla usuarios por users.

ALTER TABLE usuarios RENAME users;
Agregar una nueva columna.

Agregar a la tabla usuarios, la columna email de tipo VARCHAR con máximo de 50 caracteres.

ALTER TABLE usuarios ADD email VARCHAR(50);
Agregar una nueva columna con constraints.

Agregar a la tabla usuarios, la columna email, validando su presencia.

ALTER TABLE usuarios ADD email VARCHAR(50) NOT NULL DEFAULT '';
Agregar a la tabla usuarios, la columna email, validando su valor único.

ALTER TABLE tabla ADD columna VARCHAR(50) UNIQUE;
Eliminar una columna

Eliminar la columna email de la tabla usuarios.

ALTER TABLE usuarios DROP COLUMN email;
Modificar el tipo de dato de una columna

Modificar el tipo de dato de la columna teléfono, (tabla usuarios) de INT a VARCHAR, máximo 50 caracteres.

ALTER TABLE usuarios MODIFY telefono VARCHAR(50);
Generar una llave primaria.

Generar una llave primaria a la tabla usuarios.

ALTER TABLE usuarios ADD id INT UNSIGNED NOT NULL AUTO_INCREMENT, ADD PRIMARY KEY (id);
Agregar llave foránea.

Agregar una llave foranea a la tabla usuarios, con referencia a la tabla grupos.

ALTER TABLE usuarios ADD FOREIGN KEY(grupo_id) REFERENCES grupos(grupo_id);
Eliminar llaves foráneas

Eliminar la llave foranea grupo_id de la tabla usuarios.

ALTER TABLE usuarios DROP FOREIGN KEY grupo_id;


---Obtener registros mediante condiciones



mysql> SOURCE /users/TATIANA/Desktop/Escritorio 2021-2022/Cursos de codigo facilito/Bases de datos/senten.sql
Query OK, 2 rows affected (4.34 sec)

Query OK, 1 row affected (0.26 sec)

Database changed
Query OK, 0 rows affected (1.04 sec)

Query OK, 0 rows affected, 1 warning (1.35 sec)

Query OK, 2 rows affected (0.14 sec)
Records: 2  Duplicates: 0  Warnings: 0

Query OK, 10 rows affected (0.21 sec)
Records: 10  Duplicates: 0  Warnings: 0

+----------+---------+----------+-------------+--------+------------------+-------------+---------------------+
| autor_id | nombre  | apellido | seudonimo   | genero | fecha_nacimiento | pais_origen | fecha_creacion      |
+----------+---------+----------+-------------+--------+------------------+-------------+---------------------+
|        1 | Stephen | Ewdin    | King        | M      | 1947-09-27       | USA         | 2021-11-26 13:19:00 |
|        2 | Joanne  | Rwling   | J.k Rowling | F      | 1947-09-27       | Reino unido | 2021-11-26 13:19:00 |
+----------+---------+----------+-------------+--------+------------------+-------------+---------------------+
2 rows in set (0.00 sec)

+----------+----------+-------------------------------------------+-------------+--------+-------------------+---------------------+
| libro_id | autor_id | titulo                                    | descripcion | pagina | fecha_publicacion | fecha_creacion      |
+----------+----------+-------------------------------------------+-------------+--------+-------------------+---------------------+
|        1 |        1 | Carries                                   | NULL        |   NULL | 1974-09-27        | 2021-11-26 13:19:01 |
|        2 |        1 | El misterio de salme lot                  | NULL        |   NULL | 1995-09-27        | 2021-11-26 13:19:01 |
|        3 |        1 | El resplando                              | NULL        |   NULL | 1977-09-27        | 2021-11-26 13:19:01 |
|        4 |        2 | Harry potter y la piedra Filosofa         | NULL        |   NULL | 1997-06-30        | 2021-11-26 13:19:01 |
|        5 |        2 | Harry potter y Camara secreta             | NULL        |   NULL | 1998-07-02        | 2021-11-26 13:19:01 |
|        6 |        2 | Harry potter y el prisionero de azkaban   | NULL        |   NULL | 1999-06-08        | 2021-11-26 13:19:01 |
|        7 |        2 | Harry potter y el caliz de fuego          | NULL        |   NULL | 2000-03-20        | 2021-11-26 13:19:01 |
|        8 |        2 | Harry potter y la orden de fenix          | NULL        |   NULL | 2003-06-21        | 2021-11-26 13:19:01 |
|        9 |        2 | Harry potter y el misterio del principe   | NULL        |   NULL | 2005-06-16        | 2021-11-26 13:19:01 |
|       10 |        2 | Harry potter y las reliquias de la muerte | NULL        |   NULL | 2007-07-21        | 2021-11-26 13:19:01 |
+----------+----------+-------------------------------------------+-------------+--------+-------------------+---------------------+
10 rows in set (0.00 sec)

mysql> SOURCE /users/TATIANA/Desktop/Escritorio 2021-2022/Cursos de codigo facilito/Bases de datos/senten.sql

la forma en que se visualizan los datos es el output
y hay otras formas veamos




mysql> SELECT * FROM libros\G;
*************************** 1. row ***************************
         libro_id: 1
         autor_id: 1
           titulo: Carries
      descripcion: NULL
           pagina: NULL
fecha_publicacion: 1974-09-27
   fecha_creacion: 2021-11-26 13:19:01
*************************** 2. row ***************************
         libro_id: 2
         autor_id: 1
           titulo: El misterio de salme lot
      descripcion: NULL
           pagina: NULL
fecha_publicacion: 1995-09-27
   fecha_creacion: 2021-11-26 13:19:01
*************************** 3. row ***************************
         libro_id: 3
         autor_id: 1
           titulo: El resplando
      descripcion: NULL
           pagina: NULL
fecha_publicacion: 1977-09-27
   fecha_creacion: 2021-11-26 13:19:01
*************************** 4. row ***************************
         libro_id: 4
         autor_id: 2
           titulo: Harry potter y la piedra Filosofa
      descripcion: NULL
           pagina: NULL
fecha_publicacion: 1997-06-30
   fecha_creacion: 2021-11-26 13:19:01
*************************** 5. row ***************************
         libro_id: 5
         autor_id: 2
           titulo: Harry potter y Camara secreta
      descripcion: NULL
           pagina: NULL
fecha_publicacion: 1998-07-02
   fecha_creacion: 2021-11-26 13:19:01
*************************** 6. row ***************************
         libro_id: 6
         autor_id: 2
           titulo: Harry potter y el prisionero de azkaban
      descripcion: NULL
           pagina: NULL
fecha_publicacion: 1999-06-08
   fecha_creacion: 2021-11-26 13:19:01
*************************** 7. row ***************************
         libro_id: 7
         autor_id: 2
           titulo: Harry potter y el caliz de fuego
      descripcion: NULL
           pagina: NULL
fecha_publicacion: 2000-03-20
   fecha_creacion: 2021-11-26 13:19:01
*************************** 8. row ***************************
         libro_id: 8
         autor_id: 2
           titulo: Harry potter y la orden de fenix
      descripcion: NULL
           pagina: NULL
fecha_publicacion: 2003-06-21
   fecha_creacion: 2021-11-26 13:19:01
*************************** 9. row ***************************
         libro_id: 9
         autor_id: 2
           titulo: Harry potter y el misterio del principe
      descripcion: NULL
           pagina: NULL
fecha_publicacion: 2005-06-16
   fecha_creacion: 2021-11-26 13:19:01
*************************** 10. row ***************************
         libro_id: 10
         autor_id: 2
           titulo: Harry potter y las reliquias de la muerte
      descripcion: NULL
           pagina: NULL
fecha_publicacion: 2007-07-21
   fecha_creacion: 2021-11-26 13:19:01
10 rows in set (0.00 sec)

ERROR:
No query specified

mysql> SELECT * FROM libros\G;




codiciones donde el titulo se ha igual al nombre
utlizando Where


mysql> SELECT * FROM libros WHERE titulo = 'Carries';
+----------+----------+---------+-------------+--------+-------------------+---------------------+
| libro_id | autor_id | titulo  | descripcion | pagina | fecha_publicacion | fecha_creacion      |
+----------+----------+---------+-------------+--------+-------------------+---------------------+
|        1 |        1 | Carries | NULL        |   NULL | 1974-09-27        | 2021-11-26 13:19:01 |
+----------+----------+---------+-------------+--------+-------------------+---------------------+
1 row in set (0.00 sec)

mysql>


condicionaes

/*

-- < menor que
-- > mayor que
-- <= menor igual
-- >= mayor igual
= igual que
!= diferente que





 */



Operadores lógicos



ADN si una de dos condiciones no se cumple no veremos nada

OR si una condicion se cumple si visulizaremos datos

NOT



EJEMPLO OBTENR TODOS LOS LIBROS,


SELECT * FROM libros WHERE titulo = 'Carries' ADN autor_id = 1;


EJEMPLOS
 SELECT * FROM libros WHERE (autor_id = 1 AND titulo = 'Carries') OR (autor_id = 2 AND titulo = 'Harry potter y la orden de fenix');


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

CREATE TABLE libros(
libro_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
autor_id INT UNSIGNED NOT NULL,
titulo VARCHAR(50) NOT NULL,
descripcion VARCHAR(250),
pagina INTEGER(50) UNSIGNED,
fecha_publicacion Date NOT NULL,
FOREIGN KEY (autor_id) REFERENCES autores (autor_id),
fecha_creacion DATETIME DEFAULT current_timestamp
);


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


Registros mediante rangos




OBTENER FECHA DE PUBLICACION CUYA FECHA ESTE ENTRE X DE FECHAS HASTA N DE FECHAS

BETWEEN


mysql> SELECT titulo FROM libros WHERE fecha_publicacion BETWEEN '1995-01-01' AND '2005-05-31';
+-----------------------------------------+
| titulo                                  |
+-----------------------------------------+
| El misterio de salme lot                |
| Harry potter y la piedra Filosofa       |
| Harry potter y Camara secreta           |
| Harry potter y el prisionero de azkaban |
| Harry potter y el caliz de fuego        |
| Harry potter y la orden de fenix        |
+-----------------------------------------+
6 rows in set (0.00 sec)

mysql>


SELECT titulo, fecha_publicacion FROM libros WHERE fecha_publicacion BETWEEN '1995-01-01' AND '2005-05-31';


para visualizar mucho mejor


mysql> SELECT titulo, fecha_publicacion FROM libros WHERE fecha_publicacion BETWEEN '1995-01-01' AND '2005-01-31';
+-----------------------------------------+-------------------+
| titulo                                  | fecha_publicacion |
+-----------------------------------------+-------------------+
| El misterio de salme lot                | 1995-09-27        |
| Harry potter y la piedra Filosofa       | 1997-06-30        |
| Harry potter y Camara secreta           | 1998-07-02        |
| Harry potter y el prisionero de azkaban | 1999-06-08        |
| Harry potter y el caliz de fuego        | 2000-03-20        |
| Harry potter y la orden de fenix        | 2003-06-21        |
+-----------------------------------------+-------------------+
6 rows in set (0.00 sec)

mysql>



Listas


'Harry potter y la orden de fenix',
'Harry potter y el misterio del principe',
'Harry potter y las reliquias de la muerte',
'Harry potter y el prisionero de azkaban',

fORMA CORRECTA DE CONSULTAR POR LISTA

SELECT * FROM libros WHERE titulo IN (
								'Harry potter y la piedra Filosofa',
								'Harry potter y Camara secreta',
								'Harry potter y el prisionero de azkaban',
								'Harry potter y el caliz de fuego',
								'Harry potter y la orden de fenix'
);




Registros unicos CLAUSULA
: VALORES UNICOS DE UNA CONSULTA





Alías










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

CREATE TABLE libros(
libro_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
autor_id INT UNSIGNED NOT NULL,
titulo VARCHAR(50) NOT NULL,
descripcion VARCHAR(250),
pagina INTEGER(50) UNSIGNED,
fecha_publicacion Date NOT NULL,
FOREIGN KEY (autor_id) REFERENCES autores (autor_id) ON DELETE CASCADE,
fecha_creacion DATETIME DEFAULT current_timestamp
);


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




CREATE FUNCTION agregar_dias(fecha DATE , dias INT)
RETURNS DATE
BEGIN
  RETURN fecha + INTERVAL dias;
END//






ESTE ACRONIMO PARA SENTENCIA Y PODER GUARDAR LAS
FUNCTIONS READS SQL DATA

READS SQL DATA


DELIMITER //
CREATE FUNCTION obtener_paginas()
RETURNS INT READS SQL DATA
BEGIN
SET @paginas = (SELECT (ROUND (RAND() * 100) *4 ));
RETURN @paginas;
END; //
DELIMITER ;

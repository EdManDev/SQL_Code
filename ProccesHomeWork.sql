
-- 1-) Crear una bases de Datos
  CREATE DATABASE edmanDB;

-- 2-) usar el bases de datos
  USE edmanDB;

-- 3-) Crear una tabla
  CREATE TABLE edmanTable (
    _id	int(10) PRIMARY KEY AUTO_INCREMENT,
    username varchar(100),
    email varchar(100));

-- 4-) Insertar Datos en la Tabla
INSERT INTO edmanTable ( username, email) VALUES(“edmanuser”, “edmanuser@example.com”);

-- 5-) Diferentes Manera de Ver Los datos en la tabla
  SELECT * FROM edmanTable;
  SELECT * FROM edmanTable WHERE username=”edmanuser2”;

-- 6-) Diferentes Manera de Ver Los datos en la tabla con ORDER BY
  SELECT * FROM edmanTable ORDER BY username;
  SELECT * FROM edmanTable ORDER BY username,email;

-- 7-) Diferentes Manera de Monstrar los datos o describir los datos de una tabla
  SHOW DATABASE;
        SHOW TABLES;
        DESCRIBE edmanDB.edmanTable;
        DESCRIBE edmanTable;

-- 8-) Modificar los datos con ID
  UPDATE edmanTable SET username=”newuser” WHERE id=”2”
  UPDATE edmanTable SET estudiante=”newuser”  email=”newuser” WHERE id=2

-- 9-) Eliminar las tabla
  DROP TABLE edmanTable;

-- 10-) Eliminar las Bases de Datos
  DROP DATABASE edmanDB;



---------------------------------------------------------------------------------------------
-- LOS VIEW en SQL
CREATE DATABASE practicaView;

-- 1-) Crear dos tabla

CREATE TABLE edmanTable (cantidad INT, precio INT);

-- 2-) Insertar datos en la tabla
INSERT INTO edmanTable VALUES (30, 50);

-- 3-) Crear el View
CREATE VIEW edmanView AS SELECT cantidad , precio , cantidad*precio AS VALUE FROM edmanTable;

-- 4-) Selectionar el View
SELECT * FROM edmanView;

-- 5-) Para Eliminar el View
DELETE edmanView;


---------------------------------------------------------------------------------------------
-- LOS TRIGGER en SQL
  CREATE DATABASE edmanDB;

-- 1-) Crear una tabla (1)
  CREATE TABLE empleado (
    cod_edman int(50) PRIMARY KEY AUTO_INCREMENT, 
    nom_emp varchar(100),
    ape_emp varchar(100));

-- 2-) Crear una tabla (2)
  CREATE TABLE empleado_cop (
    cod_edman2 int(50) PRIMARY KEY AUTO_INCREMENT,  
    nom_emp2 varchar(100),
    ape_emp2 varchar(100),
    fechas_am date);

-- 2-) SHOW TABLES////////////////

-- 3-) Crear el Triger
  CREATE TRIGGER nuevo_empleado AFTER INSERT ON empleado 
    FOR EACH ROW 
    INSERT INTO empleado_cop (cod_edman2, nom_emp2, ape_emp2, fechas_am) VALUE (new.cod_edman, new.nom_emp, new.ape_emp, now());

-- 4-) INSERT dentro la tabla "empleado"
  INSERT INTO empleado (nom_emp, ape_emp) VALUES ("edman", "manigat");

-- 4-) INSERT dentro la tabla "empleado"
  SELECT * FROM empleado;
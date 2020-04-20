
-- 1 Crear una bases de Datos
  CREATE DATABASE edmanDB;

-- 2usar el bases de datos
  USE edmanDB;

-- 3 Crear una tabla
  CREATE TABLE edmanTable (
    _id	int(10) PRIMARY KEY AUTO_INCREMENT,
    username varchar(100),
    email varchar(100));

-- 4 Insertar Datos en la Tabla
  INSERT INTO edmanTable( username, email)
  VALUES(“edmanuser”, “edmanuser@example.com”);

-- 5 Diferentes Manera de Selectionar datos en la tabla
  SELECT * FROM edmanTable;
        SELECT * FROM edmanTable WHERE username=”edmanuser2”;

-- 6 Diferentes Manera de Selectionar datos en la tabla
  SELECT * FROM edmanTable ORDER BY username;
  SELECT * FROM edmanTable ORDER BY username,email;

-- 7 Diferentes Manera de Monstrar los datos o describir los datos de una tabla
  SHOW DATABASE;
        SHOW TABLES;
        DESCRIBE edmanDB.edmanTable;
        DESCRIBE edmanTable;

-- 8 Modificar los datos con ID
  UPDATE edmanTable SET username=”newuser” WHERE id=”2”
  UPDATE edmanTable SET username=”newuser” WHERE id=2

-- 9 Eliminar las tabla
  DELETE FROM edmanTable;

-- 10 Eliminar las Bases de Datos
DROP DATABASE edmanDB;



---------------------------------------------------------------------------------------------
-- LOS VIEW en SQL

-- 1 Crear dos tabla
CREATE TABLE edmanTable (cantidad INT, precio INT);

-- 2 Insertar datos en la tabla
INSERT INTO edmanTable VALUES (30, 50);

-- 3 Crear el View
CREATE VIEW edmanView AS SELECT cantidad , precio , cantidad*precio AS VALUE FROM edmanTable;

-- 4 Selectionar el View
SELECT * FROM edmanView;

-- 5 Para Eliminar el View
DELETE edmanView;


---------------------------------------------------------------------------------------------
-- LOS TRIGGER en SQL

-- !!!  HAY QUE CREAR DOS TABLAS ANTES DE CREAR  EL TRIGGER !!! 

-- 0 Crear una tabla (1)
  CREATE TABLE edmanTable (
    nombre varchar(100),
    cod_edman varchar(100));

-- 0 Crear una tabla (2)
  CREATE TABLE edmanTableCop (
    nombre varchar(100),
    cod_edman varchar(100),
    fecha varchar(100));

-- 1 Crear el Triger
CREATE TRIGGER edmanTrigger AFTER INSERT ON edmanTable 
  > FOR EACH ROW 
  > INSERT INTO  
  > edmanTableCop(cod_edman, nombre, fecha) VALUE (new.cod_edman, new.nombre, now());

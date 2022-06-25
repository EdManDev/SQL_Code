# CampVerano Video Process All Steps (using Pg DB)

## Create database

``` t
CREATE edmanDB; 
```

---

## Create Triggers

``` t
CREATE TABLE empleado (
cod_edman serial PRIMARY KEY,
nom_emp varchar(100),
ape_emp varchar(100));
```

``` t
CREATE TABLE empleado_cop (
cod_edman2 serial PRIMARY KEY,
nom_emp2 varchar(100),
ape_emp2 varchar(100),
fechas_am date);
```

``` t
trigger with nuevo_empleado
```

---

## Create VIEW

``` t
CREATE DATABASE edmanDB; 
```

``` t
CREATE TABLE edmanTable; 
```

``` t
INSERT INTO edmantable VALUES (90, 80);  
```

``` t
CREATE VIEW edmanView AS SELECT cantidad, precio*precio AS VALUE FROM edmantable;
```

``` t
SELECT * FROM  edmantable;
```

// each time i add or Insert values in a new VIEW into edmantable Automaticly we will see the operation is made automatically

``` t
SELECT * FROM  edmanView;  
```

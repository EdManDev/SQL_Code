----------------------------------------------------------- departments

CREATE TABLE countries (
  country_id   NUMBER(2) GENERATED BY DEFAULT AS IDENTITY,
  country_name VARCHAR2(40),
  region_id    NUMBER,
  PRIMARY KEY(country_id)
); 

----------------------------------------------------------- departments

CREATE TABLE departments ( 
  department_id    NUMBER(4),
  department_name  VARCHAR2(30),
  manager_id       NUMBER(6),
  location_id      NUMBER(4)
);

----------------------------------------------------------- employees

CREATE TABLE employees (
  employee_id    NUMBER(6),
  first_name     VARCHAR2(20),
  last_name      VARCHAR2(25),
  email          VARCHAR2(25),
  phone_number   VARCHAR2(20),
  hire_date      DATE,
  job_id         VARCHAR2(10),
  salary         NUMBER(8,2),
  commission_pct NUMBER(2,2),
  manager_id     NUMBER(6),
  department_id  NUMBER(4)
);

----------------------------------------------------------- job_history

CREATE TABLE job_history (
  employee_id   NUMBER(6),
  start_date    DATE,
  end_date      DATE,
  job_id        VARCHAR2(10),
  department_id NUMBER(4)
);

----------------------------------------------------------- jobs

CREATE TABLE jobs (
  job_id     VARCHAR2(10),
  job_title  VARCHAR2(35),
  min_salary NUMBER(6),
  max_salary NUMBER(6)
);

-- DROP TABLE  countries;
-- DROP TABLE  departments;
-- DROP TABLE  employees;
-- DROP TABLE  job_history;
-- DROP TABLE  jobs;
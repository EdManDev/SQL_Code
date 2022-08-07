----------------------------------------------------------- departments

CREATE TABLE countries (
  country_id   CHAR(2) CONSTRAINT  country_id_nn NOT NULL,
  country_name VARCHAR2(40),
  region_id    NUMBER,
  CONSTRAINT country_c_id_pk PRIMARY KEY (country_id)  
) 
----------------------------------------------------------- departments

CREATE TABLE departments ( 
  department_id    NUMBER(4),
  department_name  VARCHAR2(30)
  CONSTRAINT  dept_name_nn  NOT NULL,
  manager_id       NUMBER(6),
  location_id      NUMBER(4)
) ;

----------------------------------------------------------- jobs

CREATE TABLE jobs (
  job_id     VARCHAR2(10),
  job_title  VARCHAR2(35)	CONSTRAINT job_title_nn  NOT NULL,
  min_salary NUMBER(6),
  max_salary NUMBER(6)
);

----------------------------------------------------------- employees

CREATE TABLE employees (
  employee_id    NUMBER(6),
  first_name     VARCHAR2(20),
  last_name      VARCHAR2(25) CONSTRAINT emp_last_name_nn  NOT NULL,
  email          VARCHAR2(25)	CONSTRAINT emp_email_nn  NOT NULL,
  phone_number   VARCHAR2(20),
  hire_date      DATE	CONSTRAINT emp_hire_date_nn  NOT NULL,
  job_id         VARCHAR2(10)	CONSTRAINT emp_job_nn  NOT NULL,
  salary         NUMBER(8,2),
  commission_pct NUMBER(2,2),
  manager_id     NUMBER(6),
  department_id  NUMBER(4),
  CONSTRAINT     emp_salary_min CHECK (salary > 0),
  CONSTRAINT  emp_email_uk  UNIQUE (email)
);

----------------------------------------------------------- job_history

CREATE TABLE job_history (
  employee_id   NUMBER(6) CONSTRAINT    jhist_employee_nn  NOT NULL,
  start_date    DATE CONSTRAINT  jhist_start_date_nn  NOT NULL,
  end_date      DATE	CONSTRAINT    jhist_end_date_nn  NOT NULL,
  job_id        VARCHAR2(10)	CONSTRAINT    jhist_job_nn  NOT NULL,
  department_id NUMBER(4),
  CONSTRAINT    jhist_date_interval  CHECK (end_date > start_date)
);
--------------------------------------------------------------------------------------------------------
-- Chapter 5 practice 1 for chapter 5 lesson 1,2
-- 1. Write a query that displays the last name (with all letters in uppercase) and the 
-- department number for all employees whose name starts with the letters “A” Give each 
-- column an appropriate column alias. Sort the results by the employees’ last names

SELECT 
  last_name, 
  first_name,
CONCAT (CONCAT (last_name, ' '), first_name) as "Full Name"
FROM 
  employees
WHERE 
  department_id>=110;

-- 2. Edit the previous query so that the end user is prompted to enter a letter that the last 
-- name starts with. For example, if the user enters “K” when prompted for a letter, the 
-- output should show all employees whose last name starts with the letter “K.”

SELECT 
  last_name,
  SUBSTR (last_name,1,4) "Partial",
  SUBSTR (last_name, -2, 2) "Last two char",
LENGTH
  (last_name) "Name Length", INSTR (last_name, 's') "Contain's S"
FROM 
  employees
WHERE 
  department_id>=110;

--------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------
-- Chapter 5 practice 2 for chapter 5 lesson 3
-- 1. Write a query to display department number, department name, the length of 
-- department name, the last four characters of the department name for all departments 
-- located in location 1700, give each column an appropriate column alias and sort the 
-- output by the length of department_name in descending order

SELECT 
  department_id, 
  department_name, 
  length(department_name) "Length", 
  substr(department_name,-4,4) 
AS "Cutted String"
FROM 
  departments
WHERE 
  location_id=1700
ORDER BY 3 desc

-- 2. Write a query to display the country number, country name, country name after 
-- replacing the first two characters with ‘**’, give each column an appropriate column 
-- alias

SELECT
  country_id,
  country_name,
  replace(country_name, substr(country_name,1,2),'**') "New Country"
FROM
  countries;
  
------------------ ?
SELECT 
  last_name,
  LPAD (last_name, 10,'*') "LPAD",
  RPAD (last_name, 10,'*') "RPAD",
  TRIM(' Test String') "TRIM",
  REPLACE (last_name, 'gg','ff') "REPLACE"
FROM 
  employees
WHERE 
  department_id>=110;
------------------ ?

--------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------- (*)
-- Chapter 5 practice 3 for chapter 5 lesson 4
-- 1. Write a query to display the employee number, last name, salary, and salary 
-- increased by 10% (rounded to zero decimal points) for all employees working in 
-- department 100. Label the column “New Salary”, sort the output based on a selected 
-- column entered by the user

SELECT 
  employee_id,
  last_name,
  salary, round(salary+salary*10/100,0) "New Salary"
FROM 
  employees
WHERE 
  department_id=100
ORDER BY 
  &order_col

-- 2. Write a query to display the remainder of 30 divided by 7, the smallest whole number 
-- (integer) greater than or equal to 79.3, the smallest whole number (integer) smaller 
-- than or equal to 34.7

SELECT
  mod(30.7), ceil(79.3), floor(34.7);
FROM 
  dual;

--------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------- (*)
-- Chapter 5 practice 4 for chapter 5 lesson 5
-- 1. Write a query to display the system date, the yesterday date, and the tomorrow date

SELECT
  sysdate, sysdate-1, sysdate+1
FROM
  dual;

-- 2. Write a query to display the employee’s last name, hire date, hire date added by 3 
-- months for all employees working on department number 30
SELECT
  last_name,
  hire_date,
  add_months(hire_date,3)
FROM
  employee
WHERE
  department_id=30

--------------------------------------------------------------------------------------------------------

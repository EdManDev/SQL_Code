--------------------------------------------------------------------------------------------------------
--------------------------------- Conversion and General Functions
--------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------
-- Chapter 6 practice 1 for chapter 6 lesson 1,2
-- 1. Write a query to display the last name, salary , hire date, and hire date added by 4 months
-- for all employees working in department number 100, format the dates to appear in a
-- format that is similar to “Sunday , the Thirty-First of May, 2003.”

SELECT
  last_name, salary, hire_date,
  add_months(hire_date,4)
FROM 
  employees
WHERE 
  department_id=100
------------------- 
SELECT 
  last_name,
   salary,
   to_char(hire_date,'Day," the " Ddspth "of" Month, YYYY'),
   add_months(hire_date,4)
FROM 
  employees
WHERE
  department_id=100
------------------- 
SELECT 
  last_name,
  salary,
  to_char(hire_date,'Day," the " Ddspth "of" Month, YYYY'),
  to_char(add_months (hire_date,4),
  'Day," the " Ddspth "of" Month, YYYY')
FROM 
  employees
WHERE 
  department_id=100

-- 2. Write a query to display the following for each employee working in department 90:
-- <employee last name> earns <salary> monthly but wants <3 times salary.>, as in the
-- following format:
-- Matos earns $2,600.00 monthly but wants $7,800.00
SELECT 
  last_name||' earns '|| to_char(salary,'$99,999.00') ||' monthly but wants' || to_char(salary*3,'$99,999.00')
FROM 
  employees
WHERE 
  department_id=90
-------------------
ALTER session SET  nls_currency='DOP'  --- to change the ($) currency database system: ¥, £, DOP, HTG ..
-------------------

--------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------
-- Chapter 6 practice 2 for chapter 6 lesson 3
-- 1. Write a query to display the output of arithmetic operation '$5,200.3'+500
-- 2. Write a query to display the last name, salary, hire date of all employees were hired
-- between 01-02-2004 and 31-03-2004
--------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------
-- Chapter 6 practice 3 for chapter 6 lesson 4
-- 1. Write a query to display department name, department number and manager number
-- for all departments located in location 1700. If a department has a manager show “Has
-- Manager” otherwise show “No Manager.” Label the column MANAGER use NVL2 function

SELECT
  department_name,
  department_id,
  manager_id,
  nvl2(manager_id, 'Has Manager','No Manager') "Manager"
FROM 
  departments
WHERE 
  location_id=1700

-- 2. Write a query that displays employee’s last name, salary, commission amount for all
-- employees working in department number (110,80). If an employee does not earn
-- commission, show “No Commission.” Label the column COMMISSION use NVL function

SELECT
  last_name,
  salary,
  commission_pct
FROM 
  employees
WHERE 
  department_id IN (110,80)
-------------------
SELECT
  last_name,
  salary,
  commission_pct,
  nvl(commission_pct,0) AS "Commission"
FROM 
  employees
WHERE 
  department_id IN (110,80)
-------------------
SELECT 
  last_name,
  salary,
  commission_pct,
nvl(to_char(commission_pct),'No Commission') AS "Commission"
FROM 
  employees
WHERE 
  department_id IN (110,80)
--------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------
-- Chapter 6 practice 4 for chapter 6 lesson 5
-- 1. Using CASE write a query to display the employee last name, job_id, grade of all
-- employees based on the value of the JOB_ID column, using the following data:
-- Job Grade
-- AD_PRES A
-- IT_PROG B
-- SA_REP C
-- None of the above 0

SELECT
  last_name, job_id,
    case job_id when 'AD_PRES' then 'A'
    when 'IT_PROG' then 'B'
    when 'SA_REP' then 'C'
    else '0' end as "Grade"
FROM
  employees

-- 2. Rewrite the above practice using DECODE function

SELECT
  last_name, job_id,
  decode( job_id, 'AD_PRES', 'A',
  'IT_PROG', 'B',
  'SA_REP', 'C',
  '0') AS "Grade"
FROM 
  employees
  
--------------------------------------------------------------------------------------------------------


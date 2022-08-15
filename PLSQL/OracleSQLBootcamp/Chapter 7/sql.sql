--------------------------------------------------------------------------------------------------------
--------------------------------- Group Functions
--------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------
-- Chapter 7 practice 1 for chapter 7 lesson 1
-- 1. Write a query to display the highest, lowest, sum, and average salary of all employees
-- working on department number 100. Give an appropriate label for each column and
-- round the values to the nearest two decimal points.

select
  round(max(salary),2) "MAX",
  round(min(salary),2) "MIN",
  round(sum(salary),2) "SUM",
  round(avg(salary),2) "AVG"
from 
  employees
where 
  department_id=100
-- 2. Write a query to find number of departments located in location 1700.
SELECT
  department_id
FROM 
  departments
WHERE 
  location_id=1700
--------------------------
SELECT
  count(department_id)
FROM 
  departments
WHERE 
  location_id=1700
--------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------
-- Chapter 7 practice 2 for chapter 7 lesson 2
-- 1. Write a query to display number of distinct departments in employees table

SELECT
  count(DISTINCT department_id)
FROM 
  employees

-- 2. Write a query to display number of distinct locations in departments table

SELECT
  count(DISTINCT location_id)
FROM 
  departments

-- 3. Write a query to display number of managers, provide an appropriate column alias for the column

SELECT
  count(DISTINCT manager_id)
FROM 
  employees
--------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------
-- Chapter 7 practice 3 for chapter 7 lesson 3
-- 1. Write a query to display number of employees with the same job, give an appropriate
-- column alias and sort the output by number of employees in descending order

SELECT 
  job_id "JOB", 
  count(*) "No of Employees"
FROM 
  employees
GROUP BY 
  job_id
ORDER BY 2 desc

-- 2. Write a query to display number of departments in each location.
SELECT
  department_id,
  location_id
FROM
  departments
--------------------------
SELECT
  location_id, count(*)
FROM
  departments
GROUP BY 
  location_id

-- 3. Write a query to display sum, average, min, max salary per each department and job
SELECT 
  job_id,
  department_id,
  sum(salary),
  min(salary),
  max(salary),
  round(avg(salary),0)
FROM
  employees
GROUP BY
  job_id,
  department_id
ORDER BY 2,1
--------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------
-- Chapter 7 practice 4 for chapter 7 lesson 4
-- 1. Write a query to display regions’ IDs having more than 5 countries, order the output by number of countries

SELECT
  region_id,
  count(*)
FROM
  countries
GROUP BY
  region_id
HAVING BY count(*)>5
ORDER BY 2

-- 2. Write a query to display the sum of salaries of employees per each job for departments number (50, 80),

SELECT 
  job_id,
  sum(salary)
FROM
  employees
WHERE
  department_id 
IN 
  (50,80)
GROUP BY 
  job_id

--------------------- limit the output for only rows where the sum of salaries greater than or equal to 60000

SELECT 
  job_id,
  sum(salary)
FROM
  employees
WHERE
  department_id 
IN 
  (50,80)
GROUP BY 
  job_id
HAVING 
  sum(salary)>60000

--------------------------------------------------------------------------------------------------------
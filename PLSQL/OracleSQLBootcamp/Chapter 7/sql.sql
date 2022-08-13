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
--------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------
-- Chapter 7 practice 2 for chapter 7 lesson 2
-- 1. Write a query to display number of distinct departments in employees table
-- 2. Write a query to display number of distinct locations in departments table
-- 3. Write a query to display number of managers, provide an appropriate column alias for
-- the column
--------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------
-- Chapter 7 practice 3 for chapter 7 lesson 3
-- 1. Write a query to display number of employees with the same job, give an appropriate
-- column alias and sort the output by number of employees in descending order
-- 2. Write a query to display number of departments in each location.
-- 3. Write a query to display sum, average, min, max salary per each department and job
--------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------
-- Chapter 7 practice 4 for chapter 7 lesson 4
-- 1. Write a query to display regions’ IDs having more than 5 countries, order the output by
-- number of countries
-- 2. Write a query to display the sum of salaries of employees per each job for departments
-- number (50, 80) , limit the output for only rows where the sum of salaries greater than
-- or equal to 60000
--------------------------------------------------------------------------------------------------------
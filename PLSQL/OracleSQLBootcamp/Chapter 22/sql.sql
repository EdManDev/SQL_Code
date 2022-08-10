--------------------------------------------------------------------------------------------------------
--------------------------------- Manipulating Data – DML II
--------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------
-- Chapter 22 practice 1 for chapter 22 lesson 1
-- 1. Create a table called regions_old with region_id number,region_name varchar2(100),
-- 2. Insert the following records (1,’E’) , (2,’A’), (5, ‘Africa’) into regions_old table
-- 3. Merge the data into regions_old table using regions table, assuming the data in the
-- regions table is the most up-to-date. If a row in the regions table matches the
-- regions_old table, update the region_name column of the region_old table to match the
-- region table row. If a row in the regions table does not match, insert it into the
-- regsion_old table. Rows are considered matching when the region_id at both tables is
-- identical
-- 4. Commit and select the regions_old
--------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------
-- Chapter 22 practice 2 for chapter 22 lesson 3
-- 1. Create a table called emp_sal with two columns employee_id number and salary
-- number
-- 2. Create a table called emp_mgr with two columns employee_id number, and manger_id
-- number
-- 3. Write an insert statement that do the following:
--  Retrieve the employee ID, hire date, salary, and manager ID of those employees
-- whose employee ID is less than 125 from the EMPLOYEES table.
--  insert the employee ID and salary into the emp_sal table.
--  insert the employee ID and manager_id into the emp_mgr table.
-- 4. Confirm the inserted data in emp_sal and emp_mgr tables
--------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------
-- Chapter 22 practice 3 for chapter 22 lesson 5
-- 1. Create a table called salary_normal with three columns employee_id number,
-- last_name varchar2(100), and salary number
-- 2. Create a table called salary_special with three columns employee_id number,
-- last_name varchar2(100), and salary number
-- 3. Write an insert statement that do the following:
--  Retrieve the employee ID, last_name, salary of those employees whose
-- employee ID is less than 120 from the EMPLOYEES table.
--  If the salary is more than or equal $11,000, insert the employee ID, last_name
-- and salary into the salary_special table.
--  If the salary is less than $11,000, Insert the employee ID, last_name, and salary
-- into the salary_normal table
-- 4. Confirm the inserted data in both tables
--------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------
-- Chapter 22 practice 4 for chapter 22 lesson 7,8
-- 1. Create a table called dept2 as select department_id, department_name from table
-- departments where department_id in 10,20,30 and confirm the data in the dept2 table
-- 2. Capture the timestamp of the system
-- 3. Update department number 20 and change the name to ‘Test’
-- 4. Confirm the records by selecting from the table
-- 5. Use flashback query and flashback version query to check the data of the dept2 table
-- before the changes, what do you observe?
-- 6. Use flashback table to recover the table before the changes, verify the rows
-- 7. Drop the table dept2 and query the recyclebin
-- 8. Restore the table from the recyclebin to a new name
--------------------------------------------------------------------------------------------------------

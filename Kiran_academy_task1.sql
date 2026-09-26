-- Task 1: Create a database named company_db
CREATE DATABASE company_db;

-- Task 2: Use/select the company_db database
USE company_db;

-- Task 3: Create employees table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    city VARCHAR(50),
    joining_date DATE,
    status VARCHAR(20)
);

-- Task 4: Display the structure of employees table
DESC employees;

-- Task 5: Display all tables available inside company_db
SHOW TABLES;

-- Task 6: Insert Rahul Patil
INSERT INTO employees
VALUES (101, 'Rahul Patil', 'Development', 45000, 'Pune', '2026-01-10', 'Active');

-- Task 7: Insert Priya Sharma
INSERT INTO employees
VALUES (102, 'Priya Sharma', 'Testing', 38000, 'Mumbai', '2026-02-15', 'Active');

-- Task 8: Insert Amit Joshi
INSERT INTO employees
VALUES (103, 'Amit Joshi', 'Development', 52000, 'Pune', '2025-12-05', 'Active');

-- Task 9: Insert Sneha Kulkarni
INSERT INTO employees
VALUES (104, 'Sneha Kulkarni', 'HR', 35000, 'Nashik', '2026-03-20', 'Active');

-- Task 10: Insert Rohan Deshmukh
INSERT INTO employees
VALUES (105, 'Rohan Deshmukh', 'Support', 30000, 'Mumbai', '2026-04-01', 'Inactive');

-- Task 11: Insert Anjali More
INSERT INTO employees
VALUES (106, 'Anjali More', 'Testing', 42000, 'Pune', '2026-05-12', 'Active');

-- Task 12: Display all records
SELECT * FROM employees;

-- Task 13: Display only employee_name
SELECT employee_name FROM employees;

-- Task 14: Display employee_name and salary
SELECT employee_name, salary FROM employees;

-- Task 15: Display employee_name, department, and city
SELECT employee_name, department, city FROM employees;

-- Task 16: Display employees from Pune
SELECT * FROM employees WHERE city = 'Pune';

-- Task 17: Display employees from Mumbai
SELECT * FROM employees WHERE city = 'Mumbai';

-- Task 18: Display Development department employees
SELECT * FROM employees WHERE department = 'Development';

-- Task 19: Display Testing department employees
SELECT * FROM employees WHERE department = 'Testing';

-- Task 20: Display only Active employees
SELECT * FROM employees WHERE status = 'Active';

-- Task 21: Display only Inactive employees
SELECT * FROM employees WHERE status = 'Inactive';

-- Task 22: Display employee whose employee_id = 103
SELECT * FROM employees WHERE employee_id = 103;

-- Task 23: Display employee whose name is Priya Sharma
SELECT * FROM employees WHERE employee_name = 'Priya Sharma';

-- Task 24: Display employees whose salary is greater than 40000
SELECT * FROM employees WHERE salary > 40000;

-- Task 25: Display employees whose salary is less than 40000
SELECT * FROM employees WHERE salary < 40000;

-- Task 26: Display employees whose salary is equal to 35000
SELECT * FROM employees WHERE salary = 35000;

-- Task 27: Display employees whose salary is greater than or equal to 42000
SELECT * FROM employees WHERE salary >= 42000;

-- Task 28: Display Pune employees whose status is Active
SELECT * FROM employees WHERE city = 'Pune' AND status = 'Active';

-- Task 29: Display Development employees whose salary is greater than 45000
SELECT * FROM employees WHERE department = 'Development' AND salary > 45000;

-- Task 30: Display employees from Pune or Mumbai
SELECT * FROM employees WHERE city = 'Pune' OR city = 'Mumbai';

-- update operations
-- Task 31: Update Rahul Patil's salary from 45000 to 48000
UPDATE employees SET salary = 48000
WHERE employee_name = 'Rahul Patil';

-- Task 32: Update Rohan Deshmukh's status from Inactive to Active
UPDATE employees
SET status = 'Active'
WHERE employee_name = 'Rohan Deshmukh';

-- Task 33: Update Sneha Kulkarni's city from Nashik to Pune
UPDATE employees
SET city = 'Pune'
WHERE employee_name = 'Sneha Kulkarni';

-- Task 34: Update Priya Sharma's department from Testing to Development
UPDATE employees
SET department = 'Development'
WHERE employee_name = 'Priya Sharma';

-- Task 35: Update employee 106 salary to 45000
UPDATE employees
SET salary = 45000
WHERE employee_id = 106;

-- Task 36: Increase salary of employee 103 by 3000
UPDATE employees
SET salary = salary + 3000
WHERE employee_id = 103;

-- Task 37: Increase salary of all Testing employees by 2000
UPDATE employees
SET salary = salary + 2000
WHERE department = 'Testing';

-- Task 38: Change all employees from Mumbai to Mumbai Branch
UPDATE employees
SET city = 'Mumbai Branch'
WHERE city = 'Mumbai';

-- Alter table
-- Task 44: Add email column
ALTER TABLE employees
ADD COLUMN email VARCHAR(100);

-- Task 45: Add mobile column
ALTER TABLE employees
ADD COLUMN mobile VARCHAR(15);

-- Task 46: Change city size to VARCHAR(100)
ALTER TABLE employees
MODIFY COLUMN city VARCHAR(100);

-- Task 47: Rename employee_name to name
ALTER TABLE employees
RENAME COLUMN employee_name TO name;

-- Task 48: Delete mobile column
ALTER TABLE employees
DROP COLUMN mobile;

-- Task 49: Add experience column
ALTER TABLE employees
ADD COLUMN experience INT;

-- Task 50: Update experience for one employee
UPDATE employees
SET experience = 2
WHERE employee_id = 101;

-- table level ddl practice
-- Task 51: Create departments table
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100),
    location VARCHAR(100)
);

-- Task 52: Insert 3 department records
INSERT INTO departments
VALUES (1, 'Development', 'Pune');

INSERT INTO departments
VALUES (2, 'Testing', 'Mumbai');

INSERT INTO departments
VALUES (3, 'HR', 'Nashik');

-- Task 53: Display all department records
SELECT * FROM departments;

-- Task 54: Update one department location
UPDATE departments
SET location = 'Kolhapur'
WHERE department_id = 1;

-- Task 55: Delete one department record
DELETE FROM departments
WHERE department_id = 3;

-- Task 56: Rename departments table to company_departments
RENAME TABLE departments TO company_departments;

-- Task 57: Display structure of company_departments
DESC company_departments;

-- Task 58: Remove all records while keeping the table
TRUNCATE TABLE company_departments;

-- Task 59: Delete company_departments table completely
DROP TABLE company_departments;

-- Task 60: Display all remaining tables
SHOW TABLES;
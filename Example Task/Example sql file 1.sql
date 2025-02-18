CREATE DATABASE project;
USE project;
CREATE TABLE departments (
    id INTEGER PRIMARY KEY,
    department_name TEXT
);

-- Insert Data into Departments
INSERT INTO departments (id, department_name) VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance');

-- Create Employees Table
CREATE TABLE employees (
    id INTEGER PRIMARY KEY,
    name TEXT,
    salary INTEGER,
    department_id INTEGER,
    FOREIGN KEY (department_id) REFERENCES departments(id)
);

-- Insert Data into Employees
INSERT INTO employees (id, name, salary, department_id) VALUES
(1, 'John Doe', 60000, 1),
(2, 'Jane Smith', 75000, 2),
(3, 'Sam Brown', 50000, 3),
(4, 'Alice Green', 80000, 1),
(5, 'Bob White', 70000, 2);

SHOW tables;

-- SQL JOIN Query
SELECT e.id, e.name, e.salary, d.department_name  
FROM employees e  
JOIN departments d ON e.department_id = d.id;

-- SQL UNION Query
SELECT name, salary FROM employees WHERE salary > 60000
UNION
SELECT name, 70000 FROM employees WHERE department_id = 1;

-- SQL Subquery
SELECT id, name, salary FROM employees WHERE salary > (SELECT AVG(salary) FROM employees);
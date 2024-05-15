CREATE DATABASE university;
USE university;
-- Creating tables
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    department_id INT
);

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

-- Inserting sample data into tables
INSERT INTO employees (employee_id, employee_name, department_id) VALUES
(1, 'meghna', 1),
(2, 'shimu', 2),
(3, ' nur', 1),
(4, 'Badhon', NULL);

INSERT INTO departments (department_id, department_name) VALUES
(1, 'Engineering'),
(2, 'Marketing'),
(3, 'HR');

-- Performing natural join
SELECT *
FROM employees
NATURAL JOIN departments;

-- Performing inner join
SELECT *
FROM employees
INNER JOIN departments ON employees.department_id = departments.department_id;

-- Performing right join
SELECT *
FROM employees
RIGHT JOIN departments ON employees.department_id = departments.department_id;

-- Performing left join
SELECT *
FROM employees
LEFT JOIN departments ON employees.department_id = departments.department_id;

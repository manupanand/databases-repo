-- Sample SQL File: sample.sql

-- Create a database
-- Uncomment the next line if you want to create the database using the SQL file
-- CREATE DATABASE sampledb;

-- Connect to the database (use this in psql to switch to the database)
-- \c sampledb

-- Drop tables if they already exist
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;

-- Create a table for departments
CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);

-- Insert data into departments table
INSERT INTO departments (department_name) VALUES ('Human Resources');
INSERT INTO departments (department_name) VALUES ('Finance');
INSERT INTO departments (department_name) VALUES ('Engineering');
INSERT INTO departments (department_name) VALUES ('Marketing');

-- Create a table for employees
CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    hire_date DATE NOT NULL,
    department_id INTEGER REFERENCES departments(department_id)
);

-- Insert data into employees table
INSERT INTO employees (first_name, last_name, email, hire_date, department_id)
VALUES ('John', 'Doe', 'john.doe@example.com', '2023-01-15', 1);

INSERT INTO employees (first_name, last_name, email, hire_date, department_id)
VALUES ('Jane', 'Smith', 'jane.smith@example.com', '2023-02-20', 2);

INSERT INTO employees (first_name, last_name, email, hire_date, department_id)
VALUES ('Alice', 'Johnson', 'alice.johnson@example.com', '2023-03-10', 3);

INSERT INTO employees (first_name, last_name, email, hire_date, department_id)
VALUES ('Bob', 'Brown', 'bob.brown@example.com', '2023-04-05', 4);

-- Query data
-- Select all departments
SELECT * FROM departments;

-- Select all employees
SELECT * FROM employees;

-- Select employees and their departments
SELECT e.employee_id, e.first_name, e.last_name, e.email, e.hire_date, d.department_name
FROM employees e
JOIN departments d ON e.department_id = d.department_id;

-- Update data
-- Update an employee's email
UPDATE employees
SET email = 'john.doe@newemail.com'
WHERE employee_id = 1;

-- Delete data
-- Delete an employee
DELETE FROM employees
WHERE employee_id = 4;
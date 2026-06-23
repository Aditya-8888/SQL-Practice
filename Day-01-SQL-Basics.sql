-- Day 01: SQL Basics

-- Select all records
SELECT * FROM Employees;

-- Select specific columns
SELECT Name, Salary
FROM Employees;

-- Filter records
SELECT *
FROM Employees
WHERE Salary > 50000;

-- Unique values
SELECT DISTINCT Department
FROM Employees;

-- Sort records
SELECT *
FROM Employees
ORDER BY Salary DESC;

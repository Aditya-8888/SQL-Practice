-- ==========================================
Day 04: SQL JOINS
-- ==========================================

What is a JOIN?
A JOIN is used to combine rows from two or more tables based on a related column.

 Types of SQL JOINs:
 1. INNER JOIN
 2. LEFT JOIN
 3. RIGHT JOIN
 4. FULL OUTER JOIN
 5. CROSS JOIN
 6. SELF JOIN

----------------------------------------------------
 Sample Tables
----------------------------------------------------

 Employees
-- +--------+----------+---------------+
| EmpID  | Name     | DepartmentID  |
-- +--------+----------+---------------+
| 1      | Aditya   | 101           |
| 2      | Rahul    | 102           |
| 3      | Priya    | 103           |
-- +--------+----------+---------------+

 Departments
 +---------------+----------------+
 | DepartmentID  | DepartmentName |
 +---------------+----------------+
 | 101           | HR             |
 | 102           | IT             |
 | 104           | Finance        |
-- +---------------+----------------+

----------------------------------------------------
 INNER JOIN
----------------------------------------------------

-- Returns only matching records from both tables.

SELECT e.Name, d.DepartmentName
FROM Employees e
INNER JOIN Departments d
ON e.DepartmentID = d.DepartmentID;

----------------------------------------------------
-- LEFT JOIN
----------------------------------------------------

-- Returns all records from the left table
-- and matching records from the right table.

SELECT e.Name, d.DepartmentName
FROM Employees e
LEFT JOIN Departments d
ON e.DepartmentID = d.DepartmentID;

----------------------------------------------------
-- RIGHT JOIN
----------------------------------------------------

-- Returns all records from the right table
-- and matching records from the left table.

SELECT e.Name, d.DepartmentName
FROM Employees e
RIGHT JOIN Departments d
ON e.DepartmentID = d.DepartmentID;

----------------------------------------------------
-- FULL OUTER JOIN
----------------------------------------------------

-- Returns all records from both tables.

SELECT e.Name, d.DepartmentName
FROM Employees e
FULL OUTER JOIN Departments d
ON e.DepartmentID = d.DepartmentID;

----------------------------------------------------
-- CROSS JOIN
----------------------------------------------------

-- Returns every possible combination
-- of rows from both tables.

SELECT e.Name, d.DepartmentName
FROM Employees e
CROSS JOIN Departments d;

----------------------------------------------------
-- SELF JOIN
----------------------------------------------------

-- A table joined with itself.

SELECT
    A.Name AS Employee,
    B.Name AS Manager
FROM Employees A
JOIN Employees B
ON A.ManagerID = B.EmpID;

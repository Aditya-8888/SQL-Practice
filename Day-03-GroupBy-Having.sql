```sql
-- ==========================================
-- Day 03: GROUP BY & HAVING
-- ==========================================

-- GROUP BY:
-- Used to group rows that have the same values in one or more columns.
-- It is commonly used with aggregate functions like COUNT(), SUM(), AVG(), MIN(), and MAX().

-- HAVING:
-- Used to filter grouped data after the GROUP BY clause.
-- Unlike WHERE, HAVING works with aggregate functions.

-- A common interview question is:
-- WHERE filters individual rows before grouping.
-- HAVING filters groups after grouping.

-- Example 1: Count employees in each department
SELECT Department, COUNT(*) AS TotalEmployees
FROM Employees
GROUP BY Department;

-- Example 2: Average salary by department
SELECT Department, AVG(Salary) AS AverageSalary
FROM Employees
GROUP BY Department;

-- Example 3: Show departments with more than 5 employees
SELECT Department, COUNT(*) AS TotalEmployees
FROM Employees
GROUP BY Department
HAVING COUNT(*) > 5;

-- Example 4: Highest salary in each department
SELECT Department, MAX(Salary) AS HighestSalary
FROM Employees
GROUP BY Department;

-- Example 5: Total salary by department
SELECT Department, SUM(Salary) AS TotalSalary
FROM Employees
GROUP BY Department;
```

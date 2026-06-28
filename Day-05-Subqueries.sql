-- ==========================================
Day 05: SQL SUBQUERIES
-- ==========================================
Summary Of SUBQUERIES:
  
A Subquery is a query inside another query.
There are 4 types of subqueries: Single-Row, Multiple-Row, Multiple-Column, and Correlated.
A Correlated Subquery depends on the outer query and executes once per row.
JOINs combine tables, while Subqueries use the result of one query inside another.
IN compares values; EXISTS checks whether matching rows exist.
ANY means "at least one value"; ALL means "every value."
Choose JOINs for combining related tables and Subqueries when the outer query depends on the result of another query.

  
/*
What is a Subquery?

A Subquery (also called an Inner Query or Nested Query)
is a query written inside another SQL query.

The inner query executes first, and its result is used
by the outer query.

Subqueries are enclosed within parentheses ().
*/

--------------------------------------------------
-- Types of Subqueries
--------------------------------------------------

-- 1. Single-Row Subquery
-- 2. Multiple-Row Subquery
-- 3. Multiple-Column Subquery
-- 4. Correlated Subquery

--------------------------------------------------
-- Sample Table
--------------------------------------------------

-- Employees
--
-- EmpID | Name    | Salary | DepartmentID
-- ------|---------|--------|-------------
-- 1     | Aditya  | 50000  | 101
-- 2     | Rahul   | 65000  | 102
-- 3     | Priya   | 70000  | 101
-- 4     | Amit    | 90000  | 103

--------------------------------------------------
-- 1. Single-Row Subquery
--------------------------------------------------

-- Find employees earning more than the average salary.

SELECT Name,
       Salary
FROM Employees
WHERE Salary >
(
SELECT AVG(Salary)
FROM Employees
);

--------------------------------------------------
-- 2. Multiple-Row Subquery
--------------------------------------------------

-- Find employees working in departments
-- returned by another query.

SELECT *
FROM Employees
WHERE DepartmentID IN
(
SELECT DepartmentID
FROM Departments
WHERE Location = 'Pune'
);

--------------------------------------------------
-- 3. Multiple-Column Subquery
--------------------------------------------------

SELECT *
FROM Employees
WHERE (DepartmentID, Salary) IN
(
SELECT DepartmentID,
       MAX(Salary)
FROM Employees
GROUP BY DepartmentID
);

--------------------------------------------------
-- 4. Correlated Subquery
--------------------------------------------------

-- Find employees earning above the average salary
-- of their own department.

SELECT Name,
       Salary,
       DepartmentID
FROM Employees E1
WHERE Salary >
(
SELECT AVG(Salary)
FROM Employees E2
WHERE E1.DepartmentID = E2.DepartmentID
);

--------------------------------------------------
-- EXISTS
--------------------------------------------------

SELECT *
FROM Employees E
WHERE EXISTS
(
SELECT *
FROM Departments D
WHERE E.DepartmentID = D.DepartmentID
);

--------------------------------------------------
-- NOT EXISTS
--------------------------------------------------

SELECT *
FROM Employees E
WHERE NOT EXISTS
(
SELECT *
FROM Departments D
WHERE E.DepartmentID = D.DepartmentID
);

--------------------------------------------------
-- ANY Operator
--------------------------------------------------

SELECT *
FROM Employees
WHERE Salary >
ANY
(
SELECT Salary
FROM Employees
WHERE DepartmentID = 101
);

--------------------------------------------------
-- ALL Operator
--------------------------------------------------

SELECT *
FROM Employees
WHERE Salary >
ALL
(
SELECT Salary
FROM Employees
WHERE DepartmentID = 101
);

# SQL Interview Questions – Important Comparisons

---

# 1. Difference between JOIN and Subquery

## Answer

Both **JOIN** and **Subquery** are used to retrieve data from a database, but they serve different purposes.

### JOIN

A **JOIN** combines rows from two or more related tables based on a common column (usually a Primary Key and Foreign Key).

**Example:**

```sql
SELECT E.Name,
       D.DepartmentName
FROM Employees E
INNER JOIN Departments D
ON E.DepartmentID = D.DepartmentID;
```

### Subquery

A **Subquery** (Nested Query) is a query inside another SQL query. The inner query executes first, and its result is used by the outer query.

**Example:**

```sql
SELECT Name,
       Salary
FROM Employees
WHERE Salary >
(
    SELECT AVG(Salary)
    FROM Employees
);
```

### Difference

| JOIN                                                 | Subquery                                               |
| ---------------------------------------------------- | ------------------------------------------------------ |
| Combines two or more tables.                         | A query inside another query.                          |
| Usually faster for large datasets.                   | Can be slower, especially correlated subqueries.       |
| Retrieves related data from multiple tables.         | Uses the result of one query in another query.         |
| Easier when displaying columns from multiple tables. | Better for filtering or comparing values.              |
| Executes once.                                       | Inner query executes before or during the outer query. |

### When to Use

Use **JOIN** when:

* You need columns from multiple tables.
* Tables are related using keys.
* Performance is important.

Use **Subquery** when:

* You need to compare values with aggregate functions.
* The outer query depends on the result of another query.
* The query is easier to understand as a nested query.

---

# 2. Difference between IN and EXISTS

## Answer

Both **IN** and **EXISTS** are used with subqueries, but they work differently.

### IN

The **IN** operator checks whether a value matches any value returned by the subquery.

**Example:**

```sql
SELECT *
FROM Employees
WHERE DepartmentID IN
(
    SELECT DepartmentID
    FROM Departments
);
```

### EXISTS

The **EXISTS** operator checks whether the subquery returns at least one row.

It stops searching as soon as the first matching row is found.

**Example:**

```sql
SELECT *
FROM Employees E
WHERE EXISTS
(
    SELECT *
    FROM Departments D
    WHERE E.DepartmentID = D.DepartmentID
);
```

### Difference

| IN                                    | EXISTS                               |
| ------------------------------------- | ------------------------------------ |
| Compares values.                      | Checks whether rows exist.           |
| Better for small result sets.         | Better for large result sets.        |
| Evaluates all returned values.        | Stops after finding the first match. |
| Can be slower on very large datasets. | Often faster for large tables.       |

### Interview Tip

* Use **IN** for small lists of values.
* Use **EXISTS** when working with large datasets or correlated subqueries.

---

# 3. Difference between ANY and ALL

## Answer

Both **ANY** and **ALL** are used with comparison operators and subqueries.

### ANY

Returns **TRUE** if the condition is satisfied by **at least one** value returned by the subquery.

**Example:**

```sql
SELECT *
FROM Employees
WHERE Salary >
ANY
(
    SELECT Salary
    FROM Employees
    WHERE DepartmentID = 101
);
```

**Meaning:**
Return employees whose salary is greater than **at least one** salary in Department 101.

---

### ALL

Returns **TRUE** only if the condition is satisfied for **every** value returned by the subquery.

**Example:**

```sql
SELECT *
FROM Employees
WHERE Salary >
ALL
(
    SELECT Salary
    FROM Employees
    WHERE DepartmentID = 101
);
```

**Meaning:**
Return employees whose salary is greater than **every** salary in Department 101.

### Difference

| ANY                                            | ALL                                     |
| ---------------------------------------------- | --------------------------------------- |
| Condition must be true for at least one value. | Condition must be true for every value. |
| Less restrictive.                              | More restrictive.                       |
| Returns more rows.                             | Returns fewer rows.                     |

### Interview Tip

Remember:

* **ANY = At least one value**
* **ALL = Every value**

---

# 4. When should you use a Subquery instead of a JOIN?

## Answer

A **Subquery** should be used when the result of one query is needed before executing another query.

### Use a Subquery When

* You need to compare values with aggregate functions like `AVG()`, `MAX()`, `MIN()`, or `SUM()`.
* The outer query depends on the result of another query.
* The logic is easier to understand as a nested query.
* You need calculations such as:

  * Above average salary
  * Second highest salary
  * Maximum salary

**Example:**

```sql
SELECT *
FROM Employees
WHERE Salary >
(
    SELECT AVG(Salary)
    FROM Employees
);
```

### Use a JOIN When

* You need data from two or more related tables.
* You want to display columns from multiple tables.
* Tables are connected using Primary Key and Foreign Key.
* Better performance is required.

**Example:**

```sql
SELECT E.Name,
       D.DepartmentName
FROM Employees E
INNER JOIN Departments D
ON E.DepartmentID = D.DepartmentID;
```

### Interview Answer

> Use a **JOIN** when retrieving related data from multiple tables. Use a **Subquery** when the outer query depends on the result of another query or when comparing values with aggregate functions such as `AVG()`, `MAX()`, or `MIN()`.

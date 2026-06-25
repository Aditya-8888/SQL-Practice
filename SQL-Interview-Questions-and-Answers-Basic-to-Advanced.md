# SQL Interview Theory Questions and Answers

## 🟢 Basic SQL Interview Questions

### 1. What is SQL?

**Answer:**
SQL (Structured Query Language) is a standard language used to store, retrieve, manipulate, and manage data in relational databases.

---

### 2. What is a Database?

**Answer:**
A database is an organized collection of related data that can be easily accessed, managed, and updated.

---

### 3. What is DBMS?

**Answer:**
A Database Management System (DBMS) is software used to create, store, retrieve, and manage data.

**Examples:** MySQL, PostgreSQL, Oracle Database, Microsoft SQL Server.

---

### 4. What is RDBMS?

**Answer:**
A Relational Database Management System (RDBMS) stores data in tables and maintains relationships between them using keys.

---

### 5. Difference between DBMS and RDBMS?

| DBMS                                  | RDBMS                         |
| ------------------------------------- | ----------------------------- |
| Stores data as files or simple tables | Stores data in related tables |
| Relationships are not mandatory       | Relationships are maintained  |
| Less secure                           | More secure                   |
| Doesn't always support normalization  | Supports normalization        |

---

### 6. What is a Table?

**Answer:**
A table is a collection of rows and columns used to store related data.

---

### 7. What is a Row?

**Answer:**
A row (record) represents one complete set of information in a table.

---

### 8. What is a Column?

**Answer:**
A column (field) stores one type of information for every record in a table.

---

### 9. What is a Primary Key?

**Answer:**
A Primary Key uniquely identifies each row in a table.

**Properties:**

* Unique
* Cannot contain NULL values
* Only one primary key per table

---

### 10. What is a Foreign Key?

**Answer:**
A Foreign Key is a column that creates a relationship between two tables by referencing the Primary Key of another table.

---

### 11. What is a Unique Key?

**Answer:**
A Unique Key ensures all values are unique but allows one NULL value (behavior depends on the database system).

---

### 12. Difference between Primary Key and Unique Key?

| Primary Key                 | Unique Key          |
| --------------------------- | ------------------- |
| Cannot contain NULL         | Usually allows NULL |
| Only one per table          | Multiple allowed    |
| Uniquely identifies records | Ensures uniqueness  |

---

### 13. What are Constraints?

**Answer:**
Constraints are rules applied to columns to maintain data accuracy and integrity.

**Common Constraints:**

* PRIMARY KEY
* FOREIGN KEY
* UNIQUE
* NOT NULL
* CHECK
* DEFAULT

---

### 14. What is NOT NULL?

**Answer:**
The NOT NULL constraint ensures a column cannot store NULL values.

---

### 15. What is DEFAULT Constraint?

**Answer:**
The DEFAULT constraint assigns a default value when no value is provided.

---

### 16. What is CHECK Constraint?

**Answer:**
The CHECK constraint restricts values that can be inserted into a column.

Example:

```sql
CHECK (Age >= 18)
```

---

### 17. What are SQL Commands?

**Answer:**
SQL commands are categorized into:

* DDL (Data Definition Language)
* DML (Data Manipulation Language)
* DQL (Data Query Language)
* DCL (Data Control Language)
* TCL (Transaction Control Language)

---

### 18. Explain DDL Commands.

**Answer:**
DDL defines or modifies database objects.

Commands:

* CREATE
* ALTER
* DROP
* TRUNCATE
* RENAME

---

### 19. Explain DML Commands.

**Answer:**
DML is used to manipulate data.

Commands:

* INSERT
* UPDATE
* DELETE

---

### 20. Explain DQL.

**Answer:**
DQL retrieves data from a database.

Command:

* SELECT

---

## ⭐ Frequently Asked Interview Questions

* What is SQL?
* Difference between DBMS and RDBMS
* Primary Key vs Foreign Key
* Primary Key vs Unique Key
* What are Constraints?
* DDL vs DML vs DQL vs DCL vs TCL
* Table vs View
* DELETE vs TRUNCATE vs DROP

******************************************************************************************************************************************************************



# SQL Interview Theory Questions and Answers - Part 2 (Intermediate SQL)

## 🟡 Intermediate SQL Interview Questions

---

## 1. What is a JOIN?

**Answer:**
A JOIN is used to combine rows from two or more tables based on a related column.

**Types of JOINs:**

* INNER JOIN
* LEFT JOIN
* RIGHT JOIN
* FULL OUTER JOIN
* CROSS JOIN
* SELF JOIN

---

## 2. What is an INNER JOIN?

**Answer:**
INNER JOIN returns only the rows that have matching values in both tables.

**Interview Tip:**
Most frequently used JOIN.

---

## 3. What is a LEFT JOIN?

**Answer:**
LEFT JOIN returns all records from the left table and only the matching records from the right table.

If there is no match, NULL values are returned for the right table.

---

## 4. What is a RIGHT JOIN?

**Answer:**
RIGHT JOIN returns all records from the right table and matching records from the left table.

If there is no match, NULL values are returned for the left table.

---

## 5. What is a FULL OUTER JOIN?

**Answer:**
Returns all records from both tables.

If there is no match, NULL values are returned for the missing side.

---

## 6. What is a CROSS JOIN?

**Answer:**
CROSS JOIN returns the Cartesian product of two tables.

If Table A has 5 rows and Table B has 4 rows, the result will contain 20 rows.

---

## 7. What is a SELF JOIN?

**Answer:**
A SELF JOIN joins a table with itself.

It is commonly used to find employee-manager relationships.

---

## 8. What is GROUP BY?

**Answer:**
GROUP BY groups rows having the same values into summary groups.

It is commonly used with:

* COUNT()
* SUM()
* AVG()
* MIN()
* MAX()

---

## 9. What is HAVING?

**Answer:**
HAVING filters grouped data after GROUP BY.

Difference:

* WHERE filters rows before grouping.
* HAVING filters groups after grouping.

---

## 10. Difference between WHERE and HAVING?

| WHERE                                   | HAVING                      |
| --------------------------------------- | --------------------------- |
| Filters rows                            | Filters groups              |
| Used before GROUP BY                    | Used after GROUP BY         |
| Cannot use aggregate functions directly | Can use aggregate functions |

---

## 11. What is a Subquery?

**Answer:**
A Subquery is a query written inside another SQL query.

It is also called an Inner Query or Nested Query.

---

## 12. Types of Subqueries

**Answer:**

* Single-row Subquery
* Multiple-row Subquery
* Multiple-column Subquery
* Correlated Subquery

---

## 13. What is a Correlated Subquery?

**Answer:**
A Correlated Subquery depends on the outer query for its values.

It executes once for every row processed by the outer query.

---

## 14. What is a View?

**Answer:**
A View is a virtual table created using a SELECT statement.

It stores the query, not the actual data.

### Advantages

* Security
* Simplicity
* Reusability

---

## 15. Difference between Table and View?

| Table            | View                          |
| ---------------- | ----------------------------- |
| Stores data      | Stores query only             |
| Occupies storage | Very little storage           |
| Can insert data  | Usually used for viewing data |

---

## 16. What is an Index?

**Answer:**
An Index improves the speed of data retrieval.

It works like the index of a book.

---

## 17. Advantages of Index

**Answer:**

* Faster SELECT queries
* Faster searching
* Improves query performance

**Disadvantages**

* Uses extra storage
* Slows INSERT, UPDATE, DELETE operations

---

## 18. Clustered vs Non-Clustered Index

| Clustered Index        | Non-Clustered Index      |
| ---------------------- | ------------------------ |
| Stores data physically | Separate index structure |
| Only one per table     | Multiple allowed         |
| Faster range queries   | Faster lookups           |

---

## 19. What is Normalization?

**Answer:**
Normalization is the process of organizing data to reduce redundancy and improve data integrity.

### Benefits

* Reduces duplicate data
* Improves consistency
* Saves storage
* Easier maintenance

---

## 20. Types of Normalization

### 1NF (First Normal Form)

* No repeating groups
* Atomic values only

### 2NF (Second Normal Form)

* Must satisfy 1NF
* Remove partial dependency

### 3NF (Third Normal Form)

* Must satisfy 2NF
* Remove transitive dependency

### BCNF

* Every determinant must be a candidate key.

---

## 21. What is Denormalization?

**Answer:**
Denormalization combines tables to improve read performance by reducing joins.

It increases redundancy but improves query speed.

---

## 22. What is UNION?

**Answer:**
UNION combines the results of two SELECT queries and removes duplicate rows.

---

## 23. UNION vs UNION ALL

| UNION              | UNION ALL        |
| ------------------ | ---------------- |
| Removes duplicates | Keeps duplicates |
| Slower             | Faster           |

---

## 24. What is CASE?

**Answer:**
CASE is used to perform conditional logic in SQL.

It works similarly to IF-ELSE statements in programming languages.

---

## 25. What are Aggregate Functions?

**Answer:**
Aggregate functions perform calculations on multiple rows and return a single value.

Examples:

* COUNT()
* SUM()
* AVG()
* MIN()
* MAX()

---

## ⭐ Most Asked Intermediate SQL Interview Questions

✅ All Types of JOINs

✅ GROUP BY vs HAVING

✅ WHERE vs HAVING

✅ Subqueries

✅ Correlated Subqueries

✅ Views

✅ Indexes

✅ Clustered vs Non-Clustered Index

✅ Normalization (1NF, 2NF, 3NF, BCNF)

✅ Denormalization

✅ UNION vs UNION ALL

✅ CASE Statement

✅ Aggregate Functions

---

# Interview Tip

If you're preparing for **Data Analyst**, **Software Engineer**, or **CDAC DBDA** interviews, make sure you can confidently explain:

* JOINs with examples
* GROUP BY and HAVING
* Normalization
* Views and Indexes
* Subqueries and Correlated Subqueries

These are among the most commonly asked intermediate SQL topics.

******************************************************************************************************************************************************************


# SQL Interview Theory Questions and Answers - Part 3 (Advanced SQL)

## 🔴 Advanced SQL Interview Questions

---

## 1. What is a Common Table Expression (CTE)?

**Answer:**
A Common Table Expression (CTE) is a temporary named result set that exists only during the execution of a SQL query. It improves query readability and simplifies complex SQL.

**Syntax:**

```sql
WITH EmployeeCTE AS
(
    SELECT * FROM Employees
)
SELECT * FROM EmployeeCTE;
```

---

## 2. Advantages of CTE

**Answer:**

* Improves readability
* Makes complex queries easier to understand
* Can be recursive
* Easier to maintain than nested subqueries

---

## 3. What is a Recursive CTE?

**Answer:**
A Recursive CTE references itself and is commonly used for hierarchical data such as employee-manager relationships or folder structures.

---

## 4. What are Window Functions?

**Answer:**
Window functions perform calculations across a set of related rows without grouping them into a single row.

Examples:

* ROW_NUMBER()
* RANK()
* DENSE_RANK()
* LEAD()
* LAG()
* NTILE()

---

## 5. What is ROW_NUMBER()?

**Answer:**
Assigns a unique sequential number to each row.

Example:
1
2
3
4

---

## 6. What is RANK()?

**Answer:**
Assigns ranks to rows. If two rows have the same value, they receive the same rank and the next rank is skipped.

Example:
1
2
2
4

---

## 7. What is DENSE_RANK()?

**Answer:**
Assigns ranks without skipping numbers.

Example:
1
2
2
3

---

## 8. Difference between ROW_NUMBER(), RANK(), and DENSE_RANK()

| ROW_NUMBER()  | RANK()      | DENSE_RANK()     |
| ------------- | ----------- | ---------------- |
| Unique number | Skips ranks | No skipped ranks |

---

## 9. What is LEAD()?

**Answer:**
Returns the value from the next row without using a self-join.

---

## 10. What is LAG()?

**Answer:**
Returns the value from the previous row without using a self-join.

---

## 11. What is a Stored Procedure?

**Answer:**
A Stored Procedure is a precompiled collection of SQL statements stored in the database.

### Advantages

* Faster execution
* Reusable
* Secure
* Easy maintenance

---

## 12. What is a Function?

**Answer:**
A Function is a database object that accepts parameters and always returns a value.

---

## 13. Difference between Procedure and Function

| Procedure                            | Function                      |
| ------------------------------------ | ----------------------------- |
| May return zero, one, or many values | Must return one value         |
| Can modify data                      | Usually used for calculations |
| Can call functions                   | Can be used inside SELECT     |

---

## 14. What is a Trigger?

**Answer:**
A Trigger is a special stored program that automatically executes when an INSERT, UPDATE, or DELETE event occurs.

---

## 15. Types of Triggers

* BEFORE Trigger
* AFTER Trigger
* INSTEAD OF Trigger

---

## 16. What is a Transaction?

**Answer:**
A Transaction is a sequence of SQL operations treated as a single unit of work.

Commands:

* BEGIN
* COMMIT
* ROLLBACK
* SAVEPOINT

---

## 17. What are ACID Properties?

**Answer:**
ACID ensures reliable database transactions.

* **Atomicity:** Either all operations succeed or none do.
* **Consistency:** Database remains valid before and after a transaction.
* **Isolation:** Concurrent transactions do not interfere with each other.
* **Durability:** Once committed, changes are permanently saved.

---

## 18. What is COMMIT?

**Answer:**
COMMIT permanently saves the transaction.

---

## 19. What is ROLLBACK?

**Answer:**
ROLLBACK undoes changes made during the current transaction before COMMIT.

---

## 20. What is SAVEPOINT?

**Answer:**
SAVEPOINT creates a checkpoint inside a transaction, allowing rollback to a specific point instead of the beginning.

---

## 21. What is a Cursor?

**Answer:**
A Cursor processes query results one row at a time.

It is generally used when row-by-row processing is required.

---

## 22. What are Temporary Tables?

**Answer:**
Temporary Tables store data temporarily during a database session.

They are automatically removed when the session ends.

---

## 23. What is Query Optimization?

**Answer:**
Query Optimization is the process of improving SQL query performance by reducing execution time and resource usage.

---

## 24. What is an Execution Plan?

**Answer:**
An Execution Plan shows how the database engine executes a query, including scans, joins, and indexes used.

It helps identify performance bottlenecks.

---

## 25. What is a Deadlock?

**Answer:**
A Deadlock occurs when two or more transactions wait indefinitely for each other to release locked resources.

---

## 26. What is Locking?

**Answer:**
Locking prevents multiple users from modifying the same data simultaneously, maintaining data consistency.

---

## 27. What are Isolation Levels?

**Answer:**
Isolation Levels control how transactions interact with each other.

Types:

* Read Uncommitted
* Read Committed
* Repeatable Read
* Serializable

---

## 28. What is Partitioning?

**Answer:**
Partitioning divides a large table into smaller, manageable parts while keeping it logically as one table.

Benefits:

* Faster queries
* Easier maintenance
* Better scalability

---

## 29. What is Sharding?

**Answer:**
Sharding distributes data across multiple database servers to improve scalability and performance.

---

## 30. What is SQL Injection?

**Answer:**
SQL Injection is a security attack where malicious SQL code is inserted into user input to manipulate the database.

### Prevention

* Use parameterized queries
* Use prepared statements
* Validate user input
* Apply least-privilege access
* Avoid dynamic SQL where possible

---

# ⭐ Most Frequently Asked Advanced SQL Interview Questions

✅ CTE

✅ Recursive CTE

✅ Window Functions

✅ ROW_NUMBER() vs RANK() vs DENSE_RANK()

✅ LEAD() & LAG()

✅ Stored Procedures

✅ Functions

✅ Triggers

✅ Transactions

✅ ACID Properties

✅ COMMIT vs ROLLBACK

✅ SAVEPOINT

✅ Cursor

✅ Query Optimization

✅ Execution Plan

✅ Deadlock

✅ Locking

✅ Isolation Levels

✅ Partitioning

✅ SQL Injection

---

# Final Interview Tips

* Understand concepts instead of memorizing definitions.
* Be able to explain answers in your own words.
* Practice writing SQL queries along with theory.
* Learn when to use each feature in real-world scenarios.

Mastering these topics will prepare you well for **Data Analyst**, **Business Intelligence**, **Software Engineer**, and **CDAC DBDA** interviews.


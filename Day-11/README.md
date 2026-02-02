# SQL Indexing Performance Analysis

This project demonstrates how database indexes impact query performance using a simple `employees` table.

## Table Structure
```sql
employees (
  employee_id INT,
  employee_name VARCHAR(50),
  salary DECIMAL(10,2),
  department_id INT
);

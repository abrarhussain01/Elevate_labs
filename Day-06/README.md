🗄️ SQL CRUD Operations – Task 6
📌 Overview

This repository contains the implementation of CRUD (Create, Read, Update, Delete) operations using SQL as part of Task-6: CRUD Operations End-to-End.
The objective of this task is to gain hands-on experience with daily SQL operations commonly used in real-world applications.

🛠️ Tools & Technologies

Database: MySQL

IDE: MySQL Workbench

Alternatives: PostgreSQL / BigQuery Sandbox

Language: SQL

📂 Database Schema

A single table named employees is used to perform all CRUD operations.

Table Structure:

emp_id – Primary Key (Auto Increment)

name – Employee Name

department – Department Name

salary – Employee Salary

joining_date – Date of Joining

⚙️ Operations Performed
1️⃣ Create

Created the employees table with appropriate data types and constraints.

2️⃣ Insert (Bulk Data)

Inserted multiple employee records in a single query to simulate real-world bulk insertion.

3️⃣ Read

Retrieved all employee records.

Retrieved filtered data using WHERE, GROUP BY, and aggregate functions.

4️⃣ Update

Updated employee salary and department based on specific conditions.

5️⃣ Delete

Deleted selective rows using conditions.

Demonstrated the risk of deleting records without a WHERE clause.

6️⃣ Safe Delete

Used SQL safe update mode to prevent accidental deletion of all records.

7️⃣ Transactions

Implemented START TRANSACTION, COMMIT, and ROLLBACK to ensure data integrity.

8️⃣ Validation

Verified table data before and after update/delete operations.

📜 Key SQL Concepts Covered

CRUD Operations

Filtering using WHERE

Aggregate functions

Safe delete practices

Transactions and rollback

Difference between DELETE and TRUNCATE

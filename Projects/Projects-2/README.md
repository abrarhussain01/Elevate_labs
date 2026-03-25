# 🧑‍💼 Employee Management and Attendance Tracker

## 📌 Overview
This project is a **database-driven system** designed to manage employee records and track attendance efficiently. It includes automation using triggers, analytical queries, and reporting features.

Built using:
- PostgreSQL / MySQL
- SQL (DDL, DML, Functions, Triggers)

---

## 🎯 Objective
To build a database system that:
- Stores employee, department, and role data
- Tracks daily attendance
- Identifies late arrivals
- Calculates total working hours
- Generates analytical reports

---

## 🏗️ Database Schema

### Tables:
1. **Departments**
2. **Roles**
3. **Employees**
4. **Attendance**

### Relationships:
- One department → Many employees
- One role → Many employees
- One employee → Many attendance records

---

## ⚙️ Features

### ✅ Core Features
- Employee and department management
- Attendance tracking system
- Automatic late detection

### ⚡ Advanced Features
- Triggers for attendance status (Late / On Time)
- Functions to calculate working hours
- Monthly and analytical queries
- Reports using `GROUP BY` and `HAVING`

---

## 🧪 Dummy Data
- 200+ employee records generated
- Random attendance data for realistic simulation

---

## 🧠 SQL Components Used

### 🔹 DDL (Data Definition)
- `CREATE TABLE`
- `DROP TABLE`

### 🔹 DML (Data Manipulation)
- `INSERT INTO`
- `SELECT`

### 🔹 Functions
- Calculate total work hours

### 🔹 Triggers
- Automatically mark late employees

---

## 📊 Sample Queries

### Monthly Attendance
```sql
SELECT emp_id, COUNT(*) AS total_days
FROM attendance
GROUP BY emp_id;

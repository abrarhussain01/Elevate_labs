# SQL Joins Practice – Employees & Departments

## 📌 Overview

This README documents the implementation of **SQL JOIN operations** using two tables: `employees` and `departments`. The objective is to understand how different types of joins behave, how to simulate a FULL JOIN in MySQL, and where each join is used in real-world business scenarios.

This task is commonly asked in **DBMS exams, interviews, and backend development roles**.

---

## 🔗 JOIN Operations Implemented

### 1️⃣ INNER JOIN

Fetches only employees who are assigned to a department.

---

### 2️⃣ LEFT JOIN

Returns all employees and their departments. If an employee has no department, department fields return `NULL`.

---

### 3️⃣ RIGHT JOIN

Returns all departments, including those without employees.

---

### 4️⃣ FULL JOIN (Simulated using UNION)

Since MySQL does not support FULL JOIN directly, it is simulated using:

* LEFT JOIN
* RIGHT JOIN
* UNION

---

## 📊 Join Output Comparison

| Join Type  | Rows Returned   | Includes Unmatched Rows |
| ---------- | --------------- | ----------------------- |
| INNER JOIN | Only matched    | ❌ No                    |
| LEFT JOIN  | All employees   | ✅ Yes                   |
| RIGHT JOIN | All departments | ✅ Yes                   |
| FULL JOIN  | All records     | ✅ Yes                   |

---

🎯 Learning Outcomes

* By completing this task, you will understand:

* Difference between INNER, LEFT, RIGHT, and FULL JOIN

* How joins affect result sets

* How to simulate FULL JOIN in MySQL

* Real-world use cases of each join type

---

  ✅ Conclusion

This exercise provides a strong foundation in SQL joins, which are critical for backend development, data analysis, and database design. Mastering these concepts ensures better query writing, debugging, and optimization skills.

🚀 Ready for advanced topics like multi-table joins, subqueries, and performance tuning!

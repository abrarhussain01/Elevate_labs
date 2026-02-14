CREATE DATABASE analytics_db;
USE analytics_db;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    joining_date DATE
);

INSERT INTO employees(emp_name, department, salary, joining_date) VALUES
('Ravi','IT',50000,'2021-01-10'),
('Anita','IT',60000,'2020-03-15'),
('Kiran','IT',60000,'2022-07-01'),
('Meena','HR',40000,'2019-09-20'),
('Suresh','HR',45000,'2021-06-11'),
('Divya','Finance',70000,'2018-12-05'),
('Arjun','Finance',65000,'2020-08-17'),
('Neha','Finance',65000,'2022-01-25');

SELECT emp_name, department, salary,
ROW_NUMBER() OVER(PARTITION BY department ORDER BY salary DESC) AS row_num
FROM employees;

SELECT emp_name, department, salary,
RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS rank_num,
DENSE_RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS dense_rank
FROM employees;

SELECT emp_name, department, salary,
SUM(salary) OVER(PARTITION BY department ORDER BY joining_date) AS running_total
FROM employees;

SELECT emp_name, department, salary,
LAG(salary) OVER(PARTITION BY department ORDER BY joining_date) AS previous_salary
FROM employees;

SELECT emp_name, department, salary,
LEAD(salary) OVER(PARTITION BY department ORDER BY joining_date) AS next_salary
FROM employees;

SELECT *
FROM (
    SELECT emp_name, department, salary,
    RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS rnk
    FROM employees
) t
WHERE rnk = 1;

SELECT emp_name, department, salary
FROM (
    SELECT emp_name, department, salary,
    AVG(salary) OVER(PARTITION BY department) AS avg_sal
    FROM employees
) t
WHERE salary > avg_sal;


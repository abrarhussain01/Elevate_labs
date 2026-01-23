CREATE TABLE employees (emp_id INT PRIMARY KEY,
 name VARCHAR(50),
 department VARCHAR(50),
 salary DECIMAL(10,2),
 joining_date DATE);
 
 INSERT INTO employees (name, department, salary, joining_date) VALUES 
('Abrar', 'IT', 60000, '2023-01-10'),
('Prashant', 'HR', 45000, '2022-07-15'),
('Vishnu', 'Finance', 55000, '2021-03-20'),
('Abbas', 'IT', 70000, '2020-11-05'),
('Anwar', 'Sales', 40000, '2024-02-01');

SELECT * FROM employees WHERE department = 'IT';

UPDATE employees SET salary = salary + 5000 WHERE department = 'IT';

DELETE FROM employees WHERE salary < 45000;

SET SQL_SAFE_UPDATES = 1;
DELETE FROM employees WHERE emp_id = 3;

START TRANSACTION;
UPDATE employees SET salary = 80000 WHERE emp_id = 1;
ROLLBACK;
COMMIT;



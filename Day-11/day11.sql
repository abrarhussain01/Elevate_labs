SELECT * FROM employees WHERE department_id = 103;

SELECT * FROM employees WHERE salary > 60000;

DROP INDEX idx_department_id ON employees;
DROP INDEX idx_salary ON employees;

CREATE INDEX idx_department_id ON employees(department_id);

SELECT * FROM employees WHERE department_id = 102;

SELECT * FROM employees WHERE salary > 55000;

EXPLAIN
SELECT * FROM employees
WHERE department_id = 102;

EXPLAIN
SELECT * FROM employees
WHERE salary > 55000;

ALTER TABLE employees ADD PRIMARY KEY (employee_id);

CREATE INDEX idx_department_id ON employees(department_id);

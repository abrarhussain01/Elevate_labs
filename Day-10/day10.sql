SELECT 
    e.employee_id,
    e.employee_name,
    e.salary,
    d.department_name,
    d.location
FROM employees e
JOIN departments d
ON e.department_id = d.department_id;

CREATE VIEW employee_department_view AS
SELECT 
    e.employee_id,
    e.employee_name,
    e.salary,
    d.department_name,
    d.location
FROM employees e
JOIN departments d
ON e.department_id = d.department_id;

SELECT * FROM employee_department_view;

SELECT *
FROM employee_department_view
WHERE salary > 60000
ORDER BY salary DESC;

SELECT *
FROM employee_department_view
WHERE department_name = 'IT';

INSERT INTO employees
(employee_id, employee_name, salary, department_id)
VALUES (4, 'Rahul', 72000, 102);

DROP VIEW IF EXISTS employee_department_view;

SELECT 
    department_name,
    COUNT(employee_id) AS total_employees,
    AVG(salary) AS avg_salary
FROM employee_department_view
GROUP BY department_name;

SELECT 
    e.employee_id,
    e.employee_name,
    e.salary,
    d.department_name,
    d.location
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id;
 
 SELECT 
    e.employee_id,
    e.employee_name,
    e.salary,
    d.department_name
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.department_id
WHERE d.department_id IS NULL;

SELECT 
    e.employee_id,
    e.employee_name,
    d.department_name,
    d.location
FROM employees e
RIGHT JOIN departments d
ON e.department_id = d.department_id;

SELECT 
    e.employee_id,
    e.employee_name,
    d.department_name,
    d.location
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.department_id

UNION

SELECT 
    e.employee_id,
    e.employee_name,
    d.department_name,
    d.location
FROM employees e
RIGHT JOIN departments d
ON e.department_id = d.department_id;


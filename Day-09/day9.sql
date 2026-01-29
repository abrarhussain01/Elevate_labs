SELECT * FROM employees WHERE salary > (SELECT AVG(salary) FROM employees);

SELECT * FROM employees WHERE department_id = (SELECT department_id FROM employees WHERE employee_name='Riya');

SELECT * FROM employees WHERE department_id IN (SELECT department_id FROM departments);

SELECT e.* FROM employees e JOIN departments d ON e.department_id=d.department_id;

SELECT * FROM employees WHERE salary > (SELECT AVG(salary) FROM (SELECT salary FROM employees) t);

SELECT * FROM employees e WHERE salary=(SELECT MAX(salary) FROM employees WHERE department_id=e.department_id);

SELECT * FROM employees WHERE department_id = (SELECT department_id FROM employees);

SELECT * FROM employees WHERE department_id IN (SELECT department_id FROM employees);

CREATE DATABASE company_db;
USE company_db;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);

SELECT * FROM employees;

DELIMITER $$

CREATE PROCEDURE add_employee(
    IN p_name VARCHAR(50),
    IN p_department VARCHAR(50),
    IN p_salary DECIMAL(10,2)
)
BEGIN
    INSERT INTO employees(emp_name, department, salary)
    VALUES(p_name, p_department, p_salary);
END$$

DELIMITER ;

DELIMITER $$

CREATE PROCEDURE add_employee_safe(
    IN p_name VARCHAR(50),
    IN p_department VARCHAR(50),
    IN p_salary DECIMAL(10,2)
)
BEGIN

    IF p_salary <= 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Salary must be greater than zero';
    ELSE
        INSERT INTO employees(emp_name, department, salary)
        VALUES(p_name, p_department, p_salary);
    END IF;

END$$

DELIMITER ;

DELIMITER $$

CREATE FUNCTION calc_bonus(salary DECIMAL(10,2))
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    RETURN salary * 0.10;
END$$

DELIMITER ;

DELIMITER $$

CREATE FUNCTION calc_tax(salary DECIMAL(10,2))
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    RETURN salary * 0.05;
END$$

DELIMITER ;

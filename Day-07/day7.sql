CREATE TABLE departments (
    department_id INT,
    department_name VARCHAR(50),
    location VARCHAR(50)
);
CREATE TABLE employees (
    employee_id INT,
    employee_name VARCHAR(50),
    salary DECIMAL(10,2)
);

ALTER TABLE departments
ADD CONSTRAINT pk_departments PRIMARY KEY (department_id);

ALTER TABLE employees
ADD department_id INT;

ALTER TABLE employees
ADD CONSTRAINT fk_emp_dept
FOREIGN KEY (department_id)
REFERENCES departments(department_id);

INSERT INTO departments VALUES (101, 'HR', 'Mumbai');
INSERT INTO departments VALUES (102, 'IT', 'Bangalore');
INSERT INTO departments VALUES (103, 'Finance', 'Delhi');

INSERT INTO employees VALUES (1, 'Amit', 50000, 101);
INSERT INTO employees VALUES (2, 'Riya', 70000, 102);
INSERT INTO employees VALUES (3, 'Karan', 65000, 103);

INSERT INTO employees VALUES (4, 'Abrar', 60000, 999);

ALTER TABLE employees
DROP CONSTRAINT fk_emp_dept;


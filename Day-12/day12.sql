CREATE TABLE users (
    user_id INT PRIMARY KEY,
    email VARCHAR(100) UNIQUE,
    age INT CHECK (age >= 18),
    status VARCHAR(20) DEFAULT 'active'
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    price DECIMAL(10,2) CHECK (price > 0 AND price <= 100000),
    quantity INT CHECK (quantity >= 0)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO users VALUES (1, 'test@gmail.com', 15, 'active');

INSERT INTO users VALUES (2, 'test@gmail.com', 25, 'active');

INSERT INTO orders (order_id, user_id)
VALUES (101, 1);

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    salary INT CHECK (salary BETWEEN 30000 AND 200000) DEFAULT 30000,
    email VARCHAR(100) UNIQUE NOT NULL
);

INSERT INTO employees (emp_id, salary, email)
VALUES (1, -1000, NULL);

-- Age must be >= 18 due to legal requirements
-- Email must be unique to avoid duplicate accounts
-- Default status is 'active' for new users
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    email VARCHAR(100) UNIQUE,
    age INT CHECK (age >= 18),
    status VARCHAR(20) DEFAULT 'active'
);

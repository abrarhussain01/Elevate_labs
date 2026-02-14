CREATE DATABASE sales_company;
USE sales_company;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(50),
    city VARCHAR(50),
    join_date DATE
);

CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(50),
    price DECIMAL(10,2)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    product_id INT,
    quantity INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO customers (customer_name, city, join_date) VALUES
('Ravi','Hyderabad','2021-01-10'),
('Anita','Chennai','2020-03-15'),
('Kiran','Bangalore','2022-07-01'),
('Meena','Hyderabad','2019-09-20'),
('Suresh','Mumbai','2021-06-11');

INSERT INTO products (product_name, price) VALUES
('Laptop',60000),
('Mobile',25000),
('Headphones',2000),
('Tablet',30000),
('Keyboard',1500);

INSERT INTO orders (customer_id, product_id, quantity, order_date) VALUES
(1,1,1,'2023-01-10'),
(2,2,2,'2023-01-12'),
(3,3,5,'2023-02-15'),
(1,2,1,'2023-02-20'),
(4,4,1,'2023-03-01'),
(2,1,1,'2023-03-11'),
(5,5,3,'2023-04-10'),
(3,1,1,'2023-04-15'),
(4,2,2,'2023-05-05');

SELECT p.product_name,
       SUM(o.quantity) AS total_sold
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC;

SELECT DATE_FORMAT(order_date,'%Y-%m') AS month,
       SUM(p.price * o.quantity) AS revenue
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY month
ORDER BY month;

SELECT c.customer_name
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

SELECT c.customer_name,
       SUM(p.price * o.quantity) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN products p ON o.product_id = p.product_id
GROUP BY c.customer_name
HAVING total_spent > 50000
ORDER BY total_spent DESC;

SELECT c.customer_name,
       COUNT(o.order_id) AS total_orders,
       SUM(p.price * o.quantity) AS lifetime_value
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN products p ON o.product_id = p.product_id
GROUP BY c.customer_name;

CREATE INDEX idx_orders_customer ON orders(customer_id);
CREATE INDEX idx_orders_product ON orders(product_id);
CREATE INDEX idx_orders_date ON orders(order_date);

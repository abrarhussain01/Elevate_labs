USE online_retail;

INSERT INTO categories (category_name) VALUES 
('Electronics'), ('Clothing');

INSERT INTO products (product_name, price, stock_quantity, category_id)
VALUES 
('Laptop', 50000, 10, 1),
('T-Shirt', 800, 50, 2);

INSERT INTO customers (name, email, phone, address)
VALUES 
('Rahul Sharma', 'rahul@gmail.com', '9876543210', 'Delhi'),
('Anita Verma', 'anita@gmail.com', '9876501234', 'Mumbai');

INSERT INTO orders (customer_id, total_amount, status)
VALUES (1, 50800, 'Completed');

INSERT INTO order_items (order_id, product_id, quantity, unit_price)
VALUES (1, 1, 1, 50000),
       (1, 2, 1, 800);

INSERT INTO payments (order_id, payment_method, amount, payment_status)
VALUES (1, 'UPI', 50800, 'Paid');
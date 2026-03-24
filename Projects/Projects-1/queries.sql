USE online_retail;

/* Customer Order Report */

SELECT 
    c.customer_id,
    c.name AS customer_name,
    o.order_id,
    o.order_date,
    o.total_amount,
    o.status
FROM customers c
JOIN orders o 
    ON c.customer_id = o.customer_id;



/* Detailed Order Report */

SELECT 
    o.order_id,
    c.name AS customer_name,
    p.product_name,
    oi.quantity,
    oi.unit_price,
    (oi.quantity * oi.unit_price) AS total_price_per_product
FROM orders o
JOIN customers c 
    ON o.customer_id = c.customer_id
JOIN order_items oi 
    ON o.order_id = oi.order_id
JOIN products p 
    ON oi.product_id = p.product_id;



/* Product Sales Report */

SELECT 
    p.product_id,
    p.product_name,
    SUM(oi.quantity) AS total_units_sold
FROM products p
JOIN order_items oi 
    ON p.product_id = oi.product_id
GROUP BY p.product_id, p.product_name;



/* Revenue by Product */

SELECT 
    p.product_name,
    SUM(oi.quantity * oi.unit_price) AS total_revenue
FROM products p
JOIN order_items oi 
    ON p.product_id = oi.product_id
GROUP BY p.product_name;



/* Revenue by Category */

SELECT 
    cat.category_name,
    SUM(oi.quantity * oi.unit_price) AS category_revenue
FROM categories cat
JOIN products p 
    ON cat.category_id = p.category_id
JOIN order_items oi 
    ON p.product_id = oi.product_id
GROUP BY cat.category_name;



/* Payment Status Report */

SELECT 
    o.order_id,
    c.name AS customer_name,
    pay.payment_method,
    pay.amount,
    pay.payment_status,
    pay.payment_date
FROM payments pay
JOIN orders o 
    ON pay.order_id = o.order_id
JOIN customers c 
    ON o.customer_id = c.customer_id;



/* Top Spending Customers */

SELECT 
    c.customer_id,
    c.name,
    SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o 
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name
ORDER BY total_spent DESC;

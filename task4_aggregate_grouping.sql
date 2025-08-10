-- Create table
CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    product TEXT,
    category TEXT,
    quantity INTEGER,
    price REAL
);

-- Insert sample data
INSERT INTO orders (order_id, customer_id, product, category, quantity, price) VALUES
(1, 101, 'Laptop', 'Electronics', 1, 55000),
(2, 102, 'Mobile', 'Electronics', 2, 15000),
(3, 103, 'Desk', 'Furniture', 1, 8000),
(4, 101, 'Chair', 'Furniture', 4, 2500),
(5, 104, 'Book', 'Stationery', 5, 300),
(6, 102, 'Pen', 'Stationery', 10, 20),
(7, 105, 'Monitor', 'Electronics', 1, 12000),
(8, 106, 'Notebook', 'Stationery', 7, 50),
(9, 103, 'Lamp', 'Furniture', 2, 1500),
(10, 104, 'Tablet', 'Electronics', 1, 22000);

-- 1. Total revenue (SUM)
SELECT SUM(quantity * price) AS total_revenue
FROM orders;

-- 2. Number of orders (COUNT)
SELECT COUNT(order_id) AS total_orders
FROM orders;

-- 3. Average product price (AVG)
SELECT AVG(price) AS average_price
FROM orders;

-- 4. Total quantity sold per category (GROUP BY)
SELECT category, SUM(quantity) AS total_quantity
FROM orders
GROUP BY category;

-- 5. Average price per category
SELECT category, AVG(price) AS avg_price
FROM orders
GROUP BY category;

-- 6. Categories with total revenue greater than 20000 (HAVING)
SELECT category, SUM(quantity * price) AS category_revenue
FROM orders
GROUP BY category
HAVING category_revenue > 20000;

-- 7. Number of unique customers per category
SELECT category, COUNT(DISTINCT customer_id) AS unique_customers
FROM orders
GROUP BY category;

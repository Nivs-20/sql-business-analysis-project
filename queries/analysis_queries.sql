-- Question 1: Total sales per customer
SELECT customer_id, SUM(total_amount) AS total_sales
FROM orders
GROUP BY customer_id;

-- Question 2: Country with highest revenue
SELECT country, SUM(total_amount) AS total_revenue
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY country
ORDER BY total_revenue DESC
LIMIT 1;

-- Question 3: Average order value
SELECT AVG(total_amount) AS avg_order_value
FROM orders;

-- Question 4: Customers with more than 5 orders
SELECT customer_id, COUNT(order_id) AS total_orders
FROM orders
GROUP BY customer_id
HAVING COUNT(order_id) > 5;

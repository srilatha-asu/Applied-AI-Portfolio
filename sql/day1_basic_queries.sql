--1. Total revenue per customer
SELECT customer_id, SUM(amount) AS total_revenue FROM orders  GROUP BY customer_id;

--2. Total revenue by city
SELECT c.city, SUM(o.amount) AS total_revenue FROM customers c
JOIN orders o ON c.customer_id =o.customer_id GROUP BY c.city

--3. Customers with revenue greater than 10,000
SELECT customer_id, SUM(amount) AS total_revenue FROM orders
GROUP BY customer_id
HAVING SUM(amount) >10000

--4. Orders sorted by highest amount
SELECT *
FROM orders
ORDER BY amount DESC;

--5. Daily total revenue
SELECT order_date, SUM(amount) AS daily_revenue
FROM orders
GROUP BY order_date
ORDER BY order_date;


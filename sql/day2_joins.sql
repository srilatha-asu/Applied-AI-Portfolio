'''Assume the tables:
  customers(
    customer_id INT,
    customer_name VARCHAR,
    city VARCHAR
  )

  orders(
    order_id INT,
    customer_id INT,
    order_date DATE,
    amount DECIMAL
  )'''

--1. INNER JOIN - Customers with orders

SELECT 
  c.customer_id,
  c.customer_name,
  o.order_id,
  o.amount
FROM customers c
INNER JOIN orders o
  ON c.customer_id = o.customer_id;

--2. LEFT JOIN - All customers(even without orders)

SELECT
  c.customer_id,
  c.customer_name,
  o.order_id,
  o.amount
FROM customers c
LEFT JOIN orders o
  ON c.customer_id = o.customer_id

--3. Customers with NO orders

SELECT 
  c.customer_id,
  c.customer_name
FROM customers c
LEFT JOIN orders o
  ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL ;


--4. Total revenue per customer (using JOIN)

SELECT 
  c.customer_id,
  c.customer_name,
  SUM(o.amount) AS total_revenue
FROM customers c
JOIN orders o
  ON c.customer_id = o.customer_id
GROUP BY c.customer_id , customer_name;

--5. Revenue by City

SELECT 
  c.city,
  SUM(o.amount) AS city_revenue
FROM customers c
JOIN orders o
  ON c.customer_id =o.customre_id
GROUP BY c.city;



---CHATGPT PRACTICE

--Q1 Show each customer’s name and their order amount.
SELECT 
c.name, 
o.amount
FROM customers AS c
INNER JOIN orders AS o
ON c.customer_id = o.customer_id
ORDER BY c.name ASC;

--Q2 Show all customers and their order amounts.
--If a customer has no orders, they should still appear.

SELECT c.name, o.amount
FROM customers AS c
LEFT JOIN orders AS o
ON c.customer_id = o.customer_id
ORDER BY c.name ASC;

--Q3 Show customers who have never placed an order.
SELECT c.name
FROM customers AS c
LEFT JOIN orders AS o
ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

--Q4 Show all orders, including 
--those that do not have a matching customer.
SELECT o.order_id, customer_id, c.name
FROM customers AS c
RIGHT JOIN orders AS o
ON c.customer_id = o.customer_id
ORDER BY o.order_id;

--Q5 Show all customers and all orders, even if they do not match.

SELECT c.customer_id, c.name, o.order_id
FROM customers AS c
FULL JOIN orders AS o
ON c.customer_id = o.customer_id
ORDER BY c.customer_id;



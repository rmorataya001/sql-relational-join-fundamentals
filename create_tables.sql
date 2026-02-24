-- Customers Table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    country VARCHAR(50)
);

INSERT INTO customers VALUES
(1, 'Alice', 'USA'),
(2, 'Bob', 'Canada'),
(3, 'Carlos', 'USA'),
(4, 'Diana', 'Mexico'),
(5, 'Ethan', 'USA');

-- Orders Table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    amount INT
);

INSERT INTO orders VALUES
(101, 1, 200),
(102, 1, 150),
(103, 2, 300),
(104, 3, 120),
(105, 6, 500);
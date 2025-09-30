create database task6;

use task6;

CREATE TABLE products (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(100),
  category VARCHAR(50),
  price INT,
  stock INT
);

INSERT INTO products VALUES 
(1, 'Laptop', 'Electronics', 90000, 10),
(2, 'Smartphone', 'Electronics', 40000, 25),
(3, 'Table', 'Furniture', 15000, 7),
(4, 'Chair', 'Furniture', 5000, 30),
(5, 'Book', 'Office Supplies', 800, 100);

SELECT product_name, price, 
  (SELECT AVG(price) FROM products) AS avg_price
FROM products;

SELECT product_name 
FROM products 
WHERE category IN 
  (SELECT category FROM products WHERE price > 20000);

SELECT product_name
FROM products p1
WHERE EXISTS (
  SELECT 1 FROM products p2
  WHERE p2.stock < 10 AND p2.category = p1.category
);

SELECT product_name, price
FROM products p1
WHERE price > (
  SELECT AVG(price) FROM products p2
  WHERE p2.category = p1.category
);

SELECT category, avg_price FROM (
  SELECT category, AVG(price) AS avg_price
  FROM products
  GROUP BY category
) AS cat_avg;

SELECT product_name
FROM products p1
WHERE EXISTS (
  SELECT 1 FROM products p2
  WHERE p2.price > 50000 AND p2.category = p1.category
);

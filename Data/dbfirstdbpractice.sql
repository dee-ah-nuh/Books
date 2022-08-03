CREATE DATABASE my_first_db;
USE my_first_db;

CREATE TABLE customers
(id INT PRIMARY KEY,
first_name VARCHAR(45),
last_name VARCHAR(45));


INSERT INTO customers VALUES
(1, "George", "Castanza"),
(2, "Jerry", "Seinfeld"),
(3, "Elaine", "Benes");

SELECT * FROM customers;

CREATE TABLE orders
(id INT PRIMARY KEY AUTO_INCREMENT, date DATETIME, total FLOAT,
customer_id INT,
FOREIGN KEY (customer_id) REFERENCES customers(id));

SHOW TABLES FROM my_first_db;
UPDATE customers
SET last_name = "Costanza"
WHERE id = 1;

UPDATE customers
SET last_name = "Costanza"
WHERE id = 1;

UPDATE customers
SET email = "George@tv.com"
WHERE id = 1;

ALTER TABLE orders
RENAME COLUMN total TO total_price;

ALTER TABLE orders
DROP COLUMN date;


DROP TABLE tablename;

ALTER TABLE customers
MODIFY last_name VARCHAR(45) NOT NULL;

ALTER TABLE customers
ADD UNIQUE (email);
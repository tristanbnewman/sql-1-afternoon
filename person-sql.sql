CREATE TABLE person(
    id SERIAL PRIMARY KEY
    name VARCHAR(100),
    age INT,
    height INT,
    city VARCHAR(100),
    favorite_color VARCHAR(100)
)

INSERT INTO person (name, age, height, city, favorite_color)
VALUES('Tristan', 29, 68, 'Portsmouth', 'blue')
('Logan', 27, 69, 'Portsmouth', 'blue')
('Nancy', 55, 64, 'Chesapeake', 'red')
('Toby', 34, 69, 'San Francisco', 'orange')
('Veronica', 23, 65, 'Katowice', 'purple')

SELECT * FROM person
ORDER BY age ASC

SELECT * FROM person
WHERE height < 65

SELECT * FROM person
ORDER BY age ASC

SELECT * FROM person
WHERE favorite_color = 'yellow' OR favorite_color = 'purple'

CREATE TABLE orders(
	person_id SERIAL PRIMARY KEY,
	product_name VARCHAR(100), 
	product_price DECIMAL(2), 
	quantity INT
)

INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES(5, 'shoes', 50.01, 1),
(5, 'tongs', 18.73, 2),
(10, 'lb of steak', 7.99, 20),
(10, 'nails', 0.25, 100)

SELECT * FROM orders

SELECT SUM(quantity)
FROM orders

SELECT SUM(product_price)
FROM orders
WHERE person_id = 5


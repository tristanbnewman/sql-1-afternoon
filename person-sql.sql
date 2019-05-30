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
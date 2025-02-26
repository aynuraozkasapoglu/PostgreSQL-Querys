# PostgreSQL-Table
Film Tables
SELECT title, description 
FROM film 
ORDER BY title;

SELECT * 
FROM film 
WHERE length > 60 AND length < 75;

SELECT * 
FROM film 
WHERE rental_rate = 0.99 
AND (replacement_cost = 12.99 OR replacement_cost = 28.99);

SELECT last_name 
FROM customer 
WHERE first_name = 'Mary';

SELECT * 
FROM film 
WHERE length <= 50 
AND rental_rate NOT IN (2.99, 4.99);


SELECT * 
FROM film 
WHERE replacement_cost BETWEEN 12.99 AND 16.99;


SELECT first_name, last_name 
FROM actor 
WHERE first_name IN ('Penelope', 'Nick', 'Ed');

SELECT * 
FROM film 
WHERE rental_rate IN (0.99, 2.99, 4.99) 
AND replacement_cost IN (12.99, 15.99, 28.99);

SELECT country
FROM country
WHERE country LIKE 'A%a';

SELECT country
FROM country
WHERE LENGTH(country) >= 6 AND country LIKE '%n';

SELECT title
FROM film
WHERE LOWER(title) LIKE '%t%' AND LENGTH(REPLACE(LOWER(title), 't', '')) <= LENGTH(LOWER(title)) - 4;

SELECT *
FROM film
WHERE title LIKE 'C%' AND LENGTH(title) > 90 AND rental_rate = 2.99;


SELECT DISTINCT replacement_cost
FROM film
ORDER BY replacement_cost;

SELECT COUNT(DISTINCT replacement_cost) AS distinct_replacement_cost_count
FROM film;

SELECT COUNT(*) AS title_count
FROM film
WHERE title LIKE 'T%' AND rating = 'G';

SELECT COUNT(*) AS country_count
FROM country
WHERE LENGTH(country) = 5;

SELECT COUNT(*) AS city_count
FROM city
WHERE city LIKE '%r' OR city LIKE '%R';

SELECT title, length 
FROM film 
WHERE title LIKE '%n' 
ORDER BY length DESC 
LIMIT 5;

SELECT title, length 
FROM film 
WHERE title LIKE '%n' 
ORDER BY length ASC 
OFFSET 5 LIMIT 5;

SELECT customer_id, first_name, last_name, store_id 
FROM customer 
WHERE store_id = 1 
ORDER BY last_name DESC 
LIMIT 4;

SELECT AVG(rental_rate) AS ortalama_rental_rate 
FROM film;

SELECT COUNT(*) AS c_ile_baslayan_film_sayisi 
FROM film 
WHERE title LIKE 'C%';

SELECT MAX(length) AS en_uzun_film_suresi 
FROM film 
WHERE rental_rate = 0.99;

SELECT COUNT(DISTINCT replacement_cost) AS farkli_replacement_cost_sayisi 
FROM film 
WHERE length > 150;

SELECT rating, COUNT(*) AS film_sayisi
FROM film
GROUP BY rating;

SELECT replacement_cost, COUNT(*) AS film_sayisi
FROM film
GROUP BY replacement_cost
HAVING COUNT(*) > 50
ORDER BY film_sayisi DESC;

SELECT store_id, COUNT(*) AS musteri_sayisi
FROM customer
GROUP BY store_id;

SELECT country_id, COUNT(*) AS sehir_sayisi
FROM city
GROUP BY country_id
ORDER BY sehir_sayisi DESC
LIMIT 1;

CREATE TABLE employee (
    id INTEGER PRIMARY KEY,
    name VARCHAR(50),
    birthday DATE,
    email VARCHAR(100)
);

INSERT INTO employee (id, name, birthday, email) VALUES
(1, 'John Doe', '1990-05-15', 'john.doe@example.com'),
(2, 'Jane Smith', '1985-08-22', 'jane.smith@example.com'),
(3, 'Alice Johnson', '1992-11-10', 'alice.johnson@example.com'),
(4, 'Bob Brown', '1988-03-05', 'bob.brown@example.com'),
(5, 'Charlie White', '1995-07-19', 'charlie.white@example.com');
-- (...)

-- ID'ye göre güncelleme
UPDATE employee SET name = 'Updated Name' WHERE id = 1;

UPDATE employee SET birthday = '1991-06-25' WHERE name = 'Jane Smith';


UPDATE employee SET email = 'updated.email@example.com' WHERE birthday = '1988-03-05';


UPDATE employee SET name = 'New Name' WHERE email = 'alice.johnson@example.com';


UPDATE employee SET birthday = '2000-01-01' WHERE id BETWEEN 10 AND 20;


-- ID'ye göre silme
DELETE FROM employee WHERE id = 5;

-- İsme göre silme
DELETE FROM employee WHERE name = 'Bob Brown';

-- Doğum tarihine göre silme
DELETE FROM employee WHERE birthday = '1992-11-10';

-- Emaile göre silme
DELETE FROM employee WHERE email = 'john.doe@example.com';

-- ID'nin belirli bir aralıkta olduğu durumlarda silme
DELETE FROM employee WHERE id BETWEEN 30 AND 35;




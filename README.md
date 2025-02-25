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


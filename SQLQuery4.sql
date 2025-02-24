SELECT DISTINCT replacement_cost
FROM film
ORDER BY replacement_cost;
----------------------------
SELECT COUNT(DISTINCT replacement_cost) AS distinct_replacement_cost_count
FROM film;
-----------------------------------------------
SELECT COUNT(*) AS title_count
FROM film
WHERE title LIKE 'T%' AND rating = 'G';
-----------------------------------------------
SELECT COUNT(*) AS country_count
FROM country
WHERE LENGTH(country) = 5;
-----------------------------------------------
SELECT COUNT(*) AS city_count
FROM city
WHERE city LIKE '%r' OR city LIKE '%R';

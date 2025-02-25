SELECT AVG(rental_rate) AS ortalama_rental_rate 
FROM film;
-------------
SELECT COUNT(*) AS c_ile_baslayan_film_sayisi 
FROM film 
WHERE title LIKE 'C%';
-----------
SELECT MAX(length) AS en_uzun_film_suresi 
FROM film 
WHERE rental_rate = 0.99;
-----------------
SELECT COUNT(DISTINCT replacement_cost) AS farkli_replacement_cost_sayisi 
FROM film 
WHERE length > 150;

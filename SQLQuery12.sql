
--Ortalama uzunluktan fazla olan filmlerin sayýsý:
SELECT COUNT(*) 
FROM film 
WHERE length > (SELECT AVG(length) FROM film);

--En yüksek rental_rate deðerine sahip film sayýsý:
SELECT COUNT(*) 
FROM film 
WHERE rental_rate = (SELECT MAX(rental_rate) FROM film);

--En düþük rental_rate ve replacement_cost deðerlerine sahip filmler:
SELECT title, rental_rate, replacement_cost
FROM film 
WHERE rental_rate = (SELECT MIN(rental_rate) FROM film) 
AND replacement_cost = (SELECT MIN(replacement_cost) FROM film)
ORDER BY title;

--En fazla alýþveriþ yapan müþteriler:
SELECT customer.first_name, customer.last_name, COUNT(payment.payment_id) as total_payments
FROM payment
JOIN customer ON customer.customer_id = payment.customer_id
GROUP BY customer.customer_id, customer.first_name, customer.last_name
ORDER BY total_payments DESC;

--Ortalama uzunluktan fazla olan filmlerin say�s�:
SELECT COUNT(*) 
FROM film 
WHERE length > (SELECT AVG(length) FROM film);

--En y�ksek rental_rate de�erine sahip film say�s�:
SELECT COUNT(*) 
FROM film 
WHERE rental_rate = (SELECT MAX(rental_rate) FROM film);

--En d���k rental_rate ve replacement_cost de�erlerine sahip filmler:
SELECT title, rental_rate, replacement_cost
FROM film 
WHERE rental_rate = (SELECT MIN(rental_rate) FROM film) 
AND replacement_cost = (SELECT MIN(replacement_cost) FROM film)
ORDER BY title;

--En fazla al��veri� yapan m��teriler:
SELECT customer.first_name, customer.last_name, COUNT(payment.payment_id) as total_payments
FROM payment
JOIN customer ON customer.customer_id = payment.customer_id
GROUP BY customer.customer_id, customer.first_name, customer.last_name
ORDER BY total_payments DESC;
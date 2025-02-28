
1. Tüm verileri sýralama (UNION):
-- Tekrar eden veriler dahil deðil
SELECT first_name FROM actor
UNION
SELECT first_name FROM customer
ORDER BY first_name;

-- Tekrar eden veriler dahil
SELECT first_name FROM actor
UNION ALL
SELECT first_name FROM customer
ORDER BY first_name;


2. Kesiþen verileri sýralama (INTERSECT):
```sql
-- Tekrar eden veriler dahil deðil
SELECT first_name FROM actor
INTERSECT
SELECT first_name FROM customer
ORDER BY first_name;

-- Tekrar eden veriler dahil
SELECT first_name FROM actor
INTERSECT ALL
SELECT first_name FROM customer
ORDER BY first_name;
```

3. Ýlk tabloda olup ikinci tabloda olmayan veriler (EXCEPT):
```sql
-- Tekrar eden veriler dahil deðil
SELECT first_name FROM actor
EXCEPT
SELECT first_name FROM customer
ORDER BY first_name;

-- Tekrar eden veriler dahil
SELECT first_name FROM actor
EXCEPT ALL
SELECT first_name FROM customer
ORDER BY first_name;
```
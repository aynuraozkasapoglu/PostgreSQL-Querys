
1. T�m verileri s�ralama (UNION):
-- Tekrar eden veriler dahil de�il
SELECT first_name FROM actor
UNION
SELECT first_name FROM customer
ORDER BY first_name;

-- Tekrar eden veriler dahil
SELECT first_name FROM actor
UNION ALL
SELECT first_name FROM customer
ORDER BY first_name;


2. Kesi�en verileri s�ralama (INTERSECT):
```sql
-- Tekrar eden veriler dahil de�il
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

3. �lk tabloda olup ikinci tabloda olmayan veriler (EXCEPT):
```sql
-- Tekrar eden veriler dahil de�il
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
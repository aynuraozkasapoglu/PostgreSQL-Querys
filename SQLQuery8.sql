-- 1. Employee tablosunu oluþturma
CREATE TABLE employee (
    id INTEGER PRIMARY KEY,
    name VARCHAR(50),
    birthday DATE,
    email VARCHAR(100)
);

-- 2. Mockaroo servisi kullanarak 50 adet veri ekleme (Örnek veri ekleme sorgusu)
INSERT INTO employee (id, name, birthday, email) VALUES
(1, 'John Doe', '1990-05-15', 'john.doe@example.com'),
(2, 'Jane Smith', '1985-08-22', 'jane.smith@example.com'),
(3, 'Alice Johnson', '1992-11-10', 'alice.johnson@example.com'),
(4, 'Bob Brown', '1988-03-05', 'bob.brown@example.com'),
(5, 'Charlie White', '1995-07-19', 'charlie.white@example.com');
-- (..........................)

-- 3. UPDATE iþlemleri
-- ID'ye göre güncelleme
UPDATE employee SET name = 'Updated Name' WHERE id = 1;

-- Ýsme göre güncelleme
UPDATE employee SET birthday = '1991-06-25' WHERE name = 'Jane Smith';

-- Doðum tarihine göre güncelleme
UPDATE employee SET email = 'updated.email@example.com' WHERE birthday = '1988-03-05';

-- Emaile göre güncelleme
UPDATE employee SET name = 'New Name' WHERE email = 'alice.johnson@example.com';

-- ID'nin belirli bir aralýkta olduðu durumlarda güncelleme
UPDATE employee SET birthday = '2000-01-01' WHERE id BETWEEN 10 AND 20;

-- 4. DELETE iþlemleri
-- ID'ye göre silme
DELETE FROM employee WHERE id = 5;

-- Ýsme göre silme
DELETE FROM employee WHERE name = 'Bob Brown';

-- Doðum tarihine göre silme
DELETE FROM employee WHERE birthday = '1992-11-10';

-- Emaile göre silme
DELETE FROM employee WHERE email = 'john.doe@example.com';

-- ID'nin belirli bir aralýkta olduðu durumlarda silme
DELETE FROM employee WHERE id BETWEEN 30 AND 35;

-- 1. Employee tablosunu olu�turma
CREATE TABLE employee (
    id INTEGER PRIMARY KEY,
    name VARCHAR(50),
    birthday DATE,
    email VARCHAR(100)
);

-- 2. Mockaroo servisi kullanarak 50 adet veri ekleme (�rnek veri ekleme sorgusu)
INSERT INTO employee (id, name, birthday, email) VALUES
(1, 'John Doe', '1990-05-15', 'john.doe@example.com'),
(2, 'Jane Smith', '1985-08-22', 'jane.smith@example.com'),
(3, 'Alice Johnson', '1992-11-10', 'alice.johnson@example.com'),
(4, 'Bob Brown', '1988-03-05', 'bob.brown@example.com'),
(5, 'Charlie White', '1995-07-19', 'charlie.white@example.com');
-- (..........................)

-- 3. UPDATE i�lemleri
-- ID'ye g�re g�ncelleme
UPDATE employee SET name = 'Updated Name' WHERE id = 1;

-- �sme g�re g�ncelleme
UPDATE employee SET birthday = '1991-06-25' WHERE name = 'Jane Smith';

-- Do�um tarihine g�re g�ncelleme
UPDATE employee SET email = 'updated.email@example.com' WHERE birthday = '1988-03-05';

-- Emaile g�re g�ncelleme
UPDATE employee SET name = 'New Name' WHERE email = 'alice.johnson@example.com';

-- ID'nin belirli bir aral�kta oldu�u durumlarda g�ncelleme
UPDATE employee SET birthday = '2000-01-01' WHERE id BETWEEN 10 AND 20;

-- 4. DELETE i�lemleri
-- ID'ye g�re silme
DELETE FROM employee WHERE id = 5;

-- �sme g�re silme
DELETE FROM employee WHERE name = 'Bob Brown';

-- Do�um tarihine g�re silme
DELETE FROM employee WHERE birthday = '1992-11-10';

-- Emaile g�re silme
DELETE FROM employee WHERE email = 'john.doe@example.com';

-- ID'nin belirli bir aral�kta oldu�u durumlarda silme
DELETE FROM employee WHERE id BETWEEN 30 AND 35;

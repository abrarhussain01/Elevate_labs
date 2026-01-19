SELECT * FROM students WHERE age = 21;

SELECT * FROM students WHERE age = 21 AND name = 'ABRAR';

SELECT * FROM students WHERE name = 'ABRAR' OR name = 'ANWAR';

SELECT * FROM students WHERE name LIKE 'A%';

SELECT * FROM students WHERE name LIKE '_____';

SELECT * FROM students WHERE age IN (19, 21);

SELECT * FROM students WHERE age BETWEEN 20 AND 25;

SELECT * FROM students WHERE email IS NULL;

SELECT name AS student_name, email AS student_email FROM students WHERE age > 20;

SELECT * FROM students WHERE age = 21 AND email LIKE '%gmail%' AND name LIKE 'P%';
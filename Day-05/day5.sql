SELECT COUNT(*) AS total_students FROM students;

SELECT MIN(age) AS minimum_age FROM students;

SELECT MAX(age) AS maximum_age FROM students;

SELECT AVG(age) AS average_age FROM students;

SELECT SUM(age) AS total_age FROM students;

SELECT age, COUNT(*) AS total_students, AVG(age) AS avg_age FROM students GROUP BY age;

SELECT age, COUNT(*) AS total_students FROM students GROUP BY age HAVING COUNT(*) > 1;

SELECT age, COUNT(*) FROM students WHERE age >= 21 GROUP BY age;

SELECT age, COUNT(*) FROM students GROUP BY age HAVING age >= 21;

SELECT age AS category, COUNT(*) AS total_students FROM students GROUP BY age;

SELECT COUNT(age) AS non_null_ages FROM students;

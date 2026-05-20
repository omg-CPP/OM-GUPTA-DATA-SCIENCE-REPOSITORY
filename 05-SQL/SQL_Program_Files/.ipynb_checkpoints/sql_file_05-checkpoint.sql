-- MySQL Tutorial: AUTOCOMMIT, COMMIT, and ROLLBACK
USE harry;

CREATE TABLE students (
	id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    grade VARCHAR(10),
    date_of_birth DATE
);

SELECT @@autocommit; -- Check Autocommit Status - 1 (default)

-- Disable Autocommit
SET autocommit = 0;

SELECT * FROM students;

ALTER TABLE students DROP COLUMN grade;
ALTER TABLE students DROP COLUMN date_of_birth;

ALTER TABLE students ADD COLUMN email VARCHAR(50) UNIQUE;
ALTER TABLE students ADD COLUMN is_passed BOOL;

INSERT INTO students (id, name, age, email, is_passed) 
VALUES
(1, 'Amit Sharma', 20, 'amit.sharma@mail.com', TRUE),
(2, 'Priya Verma', 21, 'priya.verma@mail.com', TRUE),
(3, 'Rahul Gupta', 19, 'rahul.gupta@mail.com', FALSE),
(4, 'Sneha Singh', 22, 'sneha.singh@mail.com', TRUE),
(5, 'Vikas Kumar', 20, 'vikas.kumar@mail.com', FALSE),
(6, 'Neha Agarwal', 21, 'neha.agarwal@mail.com', TRUE),
(7, 'Arjun Mehta', 23, 'arjun.mehta@mail.com', TRUE),
(8, 'Kavya Jain', 19, 'kavya.jain@mail.com', FALSE);

SELECT * FROM students;

START TRANSACTION;
UPDATE students SET age = age + 1 WHERE id = 1;
UPDATE students SET age = age - 1 WHERE id = 2;
COMMIT;

SELECT * FROM students;

START TRANSACTION;
UPDATE students SET age = age + 1 WHERE id = 1;
UPDATE students SET age = age - 1 WHERE id = 2;
SELECT * FROM students;
-- -- An error or condition check fails here
ROLLBACK;
SELECT * FROM students;

SET autocommit = 1; -- set again to default value








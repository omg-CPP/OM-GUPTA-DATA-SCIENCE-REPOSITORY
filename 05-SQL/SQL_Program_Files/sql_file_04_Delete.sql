-- DELETE Data from a Table

SELECT * FROM student;

DELETE FROM student WHERE grade = "Unknown"; 

SELECT * FROM student;

DELETE FROM student WHERE id = 105; 
SELECT * FROM student;

INSERT INTO student (id, name, age, grade, date_of_birth) VALUES
(155, 'Ayesha Khan', 16, '10th', "2004-12-01"),
(251, 'Ravi Sharma', 17, '11th', "2002-01-02"),
(351, 'Meena Joshi', 15, '9th', "2003-11-03"),
(451, 'Arjun Verma', 18, '12th', "2005-10-04"),
(851, 'Vikram Singh', 18, '12th', "2010-11-05"),
(951, 'Anjali Desai', 16, '10th', "2011-08-06"),
(1051, 'Farhan Zaidi', 17, '11th', "2022-12-07");

SELECT * FROM student;

DELETE FROM student WHERE grade = '9th';
SELECT * FROM student;

DELETE FROM student WHERE age = 16;
SELECT * FROM student;

DELETE FROM student WHERE date_of_birth IS NULL;
SELECT * FROM student;

DELETE FROM student; -- Remove all data but retains the table structure.
SELECT * FROM student;

DROP TABLE student; -- This removes both the data and the table structure.

SELECT * FROM student; -- table does not exsist


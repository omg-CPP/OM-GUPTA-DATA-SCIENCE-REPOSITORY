CREATE DATABASE school_DB;
USE school_DB;
CREATE TABLE student (
	id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    grade VARCHAR(10),
    date_of_birth DATE
);
DESCRIBE student;

INSERT INTO student (id, name, age, grade, date_of_birth) 
	VALUES (1, "Rohan", 21, "10th", "1999-02-13");

SELECT * FROM student;

INSERT INTO student (id, name, age, grade, date_of_birth) 
	VALUES (2, "Atul", 23, "10th", "1999-06-24");
    
SELECT * FROM student;

INSERT INTO student (id, name, age, grade, date_of_birth) VALUES (3, 'Meena Joshi',
15, '9th', NULL);
INSERT INTO student (id, name, age, grade, date_of_birth) VALUES (4, 'Arjun Verma',
18, '12th', NULL);

SELECT * FROM student;

INSERT INTO student (id, name, age, grade, date_of_birth) VALUES
(15, 'Ayesha Khan', 16, '10th', NULL),
(25, 'Ravi Sharma', 17, '11th', NULL),
(35, 'Meena Joshi', 15, '9th', NULL),
(45, 'Arjun Verma', 18, '12th', NULL),
(55, 'Sara Ali', 16, '10th', NULL),
(65, 'Karan Mehta', 17, '11th', NULL),
(75, 'Tanya Roy', 15, '9th', NULL),
(85, 'Vikram Singh', 18, '12th', NULL),
(95, 'Anjali Desai', 16, '10th', NULL),
(105, 'Farhan Zaidi', 17, '11th', "2002-12-06");

SELECT * FROM student;


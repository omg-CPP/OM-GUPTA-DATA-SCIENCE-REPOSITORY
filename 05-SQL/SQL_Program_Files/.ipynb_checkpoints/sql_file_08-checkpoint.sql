CREATE DATABASE school;
USE school;

CREATE TABLE classes (
    class_id INT AUTO_INCREMENT PRIMARY KEY,
    class_name VARCHAR(50) NOT NULL
);

CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    class_id INT, 
    -- reference karta hai classes ki class_id ko jo primary key hai
    FOREIGN KEY (class_id) REFERENCES classes(class_id)
        ON UPDATE CASCADE
        ON DELETE SET NULL
);

-- class_id which is PRIMARY KEY is populated on it's own
INSERT INTO classes (class_name) VALUES ('Mathematics'), ('Science'), ('History');
SELECT * FROM classes;

-- student_id which is PRIMARY KEY is populated on it's own
INSERT INTO students (student_name, class_id) VALUES 
('Alice', 1),
('Bob', 2),
('Charlie', 1);
SELECT * FROM students;

-- ON DELETE SET NULL
DELETE FROM classes WHERE class_id = 2;

SELECT * FROM students; -- class_id in students table becomes NULL

-- ON UPDATE CASCADE

UPDATE classes SET class_id = 101 WHERE class_id = 1;
UPDATE classes SET class_id = 102 WHERE class_id = 2;
UPDATE classes SET class_id = 103 WHERE class_id = 3;

SELECT * FROM classes;
SELECT * FROM students;

-- View the Relationships
SHOW CREATE TABLE students;

SELECT 
    table_name,
    column_name,
    constraint_name,
    referenced_table_name,
    referenced_column_name
FROM 
    information_schema.key_column_usage
WHERE 
    referenced_table_name IS NOT NULL
    AND table_schema = 'school';










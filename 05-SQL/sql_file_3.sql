-- Updating Data in a Table

USE school_DB;
SELECT * FROM student;

-- 1 - Simple
-- UPDATE table_name
-- SET column1 = value1, column2 = value2, ...
-- WHERE condition;

UPDATE student SET grade="X" WHERE grade="10th";

SELECT * FROM student;

-- 2 - Update Multiple Columns
UPDATE student SET age = 17, grade = '10th' WHERE id = 3;

SELECT * FROM student;

-- 3 - update all rows
UPDATE student SET age = 18;
SELECT * FROM student;

-- 4 - Conditional Update with Comparison Operators
UPDATE student SET grade = '10th' WHERE grade = '9th';
SELECT * FROM student;

UPDATE student SET age = age + 1 WHERE age = 18;
SELECT * FROM student;

-- 5 -  Update Using IS NULL
UPDATE student SET grade = 'Unknown' WHERE grade = "X";
SELECT * FROM student;

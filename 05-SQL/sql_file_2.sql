SELECT * FROM student;

-- WHERE CLAUSE 

SELECT name, age, grade FROM student;

SELECT * FROM student WHERE grade = '10th';

SELECT * FROM student WHERE age > 16;

SELECT * FROM student WHERE age > 16 and grade = "10th";

SELECT * FROM student WHERE age BETWEEN 16 and 18;
-- inclusive 

SELECT * FROM student WHERE grade IN ('10th', '12th');
-- present in any of them

SELECT * FROM student WHERE grade NOT IN ('10th', '12th');
-- Excludes list items

SELECT * FROM student WHERE name LIKE "A%";
-- (names starting with A)

SELECT * FROM student WHERE name NOT LIKE "%a";
--  (names not ending in a)

SELECT * FROM student WHERE name LIKE "%an";
-- shows all ending with an

-- NULL VALUES

SELECT * FROM student WHERE date_of_birth IS NULL;

SELECT * FROM student WHERE date_of_birth IS NOT NULL;

SELECT * FROM student WHERE date_of_birth IS NOT NULL AND age > 16 AND grade != "10th";

SELECT * FROM student WHERE grade = '9th' OR grade = '12th';

SELECT * FROM student WHERE (grade = '10th' OR grade = '11th') AND age >= 16;

SELECT * FROM student ORDER BY age ASC;

SELECT * FROM student ORDER BY name DESC;

SELECT * FROM student WHERE date_of_birth IS NULL ORDER BY name DESC;

SELECT * FROM student LIMIT 5;

SELECT * FROM student WHERE date_of_birth IS NULL ORDER BY name DESC LIMIT 5;

SELECT * FROM student LIMIT 5;

SELECT * FROM student LIMIT 2, 5;
-- skips 2 and then shows 5 of them



















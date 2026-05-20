-- MySQL Tutorial: Getting Current Date and Time

USE harry;
SELECT * FROM students;

-- 1. CURRENT_DATE
SELECT CURRENT_DATE; -- 2026-05-19

-- 2. CURRENT_TIME
SELECT CURRENT_TIME; -- 21:38:44


-- 3. CURRENT_TIMESTAMP (or NOW() )
SELECT CURRENT_TIMESTAMP; -- 2026-05-19 21:38:54
-- or
SELECT NOW(); -- 2026-05-19 21:38:54

-- 4. LOCALTIME and LOCALTIMESTAMP
SELECT LOCALTIME; -- 2026-05-19 21:37:59
SELECT LOCALTIMESTAMP; -- 2026-05-19 21:37:59
-- These functions return the local date and time of the MySQL server, not the client’s time zone.

SELECT * FROM students;

ALTER TABLE students ADD COLUMN date_joined DATETIME DEFAULT current_timestamp;

SELECT * FROM students;

INSERT INTO students (id, name, date_joined)
VALUES
(9, "Ajay Kumar", current_timestamp());
SELECT * FROM students;

INSERT INTO students (id, name, date_joined)
VALUES
(10, "Sushil Sharma", NOW());
SELECT * FROM students;




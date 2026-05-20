CREATE TABLE accounts (
	id INT,
	balance DECIMAL(10,2) CHECK (balance >= 0)
);

SELECT * FROM accounts;

INSERT INTO accounts (id, balance) VALUES (1, -34); -- error

-- DECIMAL(10,2) means:
-- 10 total digits are allowed.
-- 2 digits after the decimal point.
-- Therefore, 8 digits before the decimal point.

INSERT INTO accounts (id, balance) VALUES (1, 34);
SELECT * FROM accounts;

CREATE TABLE stud (
    roll_no INT PRIMARY KEY,
    age INT CONSTRAINT chk_age CHECK (age >= 5),
    email VARCHAR(100) UNIQUE
);

SELECT * FROM stud;
INSERT INTO stud (roll_no, age, email) VALUES(1, 56, "me@mail.com");
SELECT * FROM stud;

-- constraint chk_age is violated
INSERT INTO stud (roll_no, age, email) VALUES(1, 3, "me2@mail.com");
-- error

SELECT * FROM stud;






 




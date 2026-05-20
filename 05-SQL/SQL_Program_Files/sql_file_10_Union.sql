SELECT * FROM students;
SELECT * FROM marks;

SELECT student_id FROM marks;
SELECT id FROM students;



-- output will come under student_id
SELECT student_id FROM marks 
UNION 
SELECT id FROM students;

CREATE TABLE employees (
	employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    hire_date DATE,
    salary DECIMAL(10,2),
    is_active BOOL
);

-- insert sample rows into the employee table
INSERT INTO employees
(employee_id, first_name, last_name, department, hire_date, salary, is_active)
VALUES
(1, 'Amit', 'Sharma', 'HR', '2020-03-15', 45000.00, TRUE),
(2, 'Priya', 'Verma',  'IT',  '2019-07-22', 75000.00, TRUE),
(3, 'Rahul', 'Gupta',  'Finance', '2021-01-10', 62000.50, TRUE),
(4, 'Sneha', 'Kapoor', 'Marketing', '2018-11-05', 58000.00, FALSE),
(5, 'Vikas', 'Singh',  'Sales', '2022-06-18', 40000.75, TRUE),
(6, 'Neha',  'Agarwal', 'IT', '2017-09-30', 90000.00, TRUE),
(7, 'Rohit', 'Mehta', 'Operations', '2023-02-14', 35000.00, FALSE);

SELECT * FROM employees;

-- create emp_personal table
CREATE TABLE emp_personal (
	personal_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT,
    date_of_birth DATE,
    phone_number VARCHAR(15),
    email VARCHAR(100),
    address TEXT,
    marital_status VARCHAR(20),
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

INSERT INTO emp_personal
(employee_id, date_of_birth, phone_number, email, address, marital_status)
VALUES
(1, '1990-05-12', '9876543210', 'amit.sharma@example.com',
 'Delhi, India', 'Married'),

(2, '1992-08-25', '9876543211', 'priya.verma@example.com',
 'Noida, India', 'Single'),

(3, '1988-11-03', '9876543212', 'rahul.gupta@example.com',
 'Ghaziabad, India', 'Married'),

(4, '1991-02-18', '9876543213', 'sneha.kapoor@example.com',
 'Gurgaon, India', 'Single'),

(5, '1995-07-09', '9876543214', 'vikas.singh@example.com',
 'Faridabad, India', 'Single'),

(6, '1987-12-30', '9876543215', 'neha.agarwal@example.com',
 'Lucknow, India', 'Married'),

(7, '1998-04-21', '9876543216', 'rohit.mehta@example.com',
 'Jaipur, India', 'Single');
 
SELECT * FROM employees;
SELECT * FROM emp_personal;
  
SELECT email, address FROM emp_personal
UNION
SELECT first_name, last_name FROM employees;

SELECT email, address FROM emp_personal
UNION ALL
SELECT first_name, last_name FROM employees;

SELECT first_name, last_name FROM employees
UNION ALL
SELECT email, address FROM emp_personal;

-- SORTING

-- SELECT name FROM students_2023
-- UNION
-- SELECT name FROM students_2024
-- ORDER BY name;


  

 
 








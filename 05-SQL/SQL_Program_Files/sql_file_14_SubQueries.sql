USE harryjoins;

SELECT * FROM employees;

SELECT AVG(salary) FROM employees; -- 57857.321429
SELECT first_name, last_name, salary FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

SELECT * FROM employees;

-- co-related sub-queries
-- employee whose salry are more than avg salary of their department
SELECT first_name, last_name, salary FROM employees e
WHERE salary > (SELECT AVG(salary) FROM employees WHERE department = e.department);


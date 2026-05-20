SELECT * FROM employees;

SELECT first_name, last_name, CONCAT(first_name, " ", last_name) as name FROM employees;

SELECT NOW();
SELECT current_timestamp();

SELECT length(first_name) as len FROM employees;

SELECT LENGTH('Harry');

SELECT ROUND(12.6789, 2); -- 12.68

SELECT DATEDIFF('2025-06-01', '2025-05-01'); -- 31

SELECT DATEDIFF(CURRENT_DATE, hire_date) / 365 as years_of_exp FROM employees;

SELECT ROUND(DATEDIFF(CURRENT_DATE, hire_date) / 365, 1) as years_of_exp FROM employees;

SELECT ROUND(DATEDIFF(CURRENT_DATE, hire_date) / 365, 0) as years_of_exp FROM employees;

SELECT * FROM employees;

SELECT FLOOR(salary) as floor_of_salary FROM employees;

SELECT SUM(salary) as sum FROM employees;

SELECT MAX(salary) as max_salary FROM employees;

SELECT MIN(salary) as min_salary FROM employees;

SELECT salary FROM employees;

SELECT CEIL(salary) as ceil_of_salary FROM employees;

SELECT FLOOR(AVG(salary)) as avg_of_salary FROM employees;

SELECT COUNT(salary) as count FROM employees;

SELECT YEAR(hire_date) as year FROM employees;
SELECT MONTH(hire_date) as month FROM employees;
SELECT DATE(hire_date) as date FROM employees;
SELECT DAY(hire_date) as day FROM employees;

SELECT MOD(10, 3);

SELECT RAND();

SELECT * FROM employees;



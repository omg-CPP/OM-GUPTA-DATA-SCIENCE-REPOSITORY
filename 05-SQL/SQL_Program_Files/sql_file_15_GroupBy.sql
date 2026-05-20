USE harryjoins;

SELECT * FROM employees;

-- Example: Count of employees in each department
-- Here, we’re grouping all employees by their department and counting how many
-- are in each group.
SELECT department, COUNT(*) AS total 
FROM employees 
GROUP BY department;

-- Example: Average salary per department 
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;
-- We are telling MySQL: “Group the data by department, then calculate the
-- average salary for each group.”

-- Example: Count by department and job title

SELECT department, is_active, COUNT(*) AS count
FROM employees
GROUP BY department, is_active;

-- This will count how many employees hold each job title within each department.

INSERT INTO employees
(employee_id, first_name, last_name, department, hire_date, salary, is_active)
VALUES
(8, 'Om', 'Gupta', 'HR', '2020-03-15', 46000.00, FALSE),
(9, 'Arjun', 'Chimadiya', 'Marketing', '2019-07-22', 75000.00, TRUE),
(102, 'Priya', 'Verma', 'IT', '2019-07-22', 75000.00, TRUE);

UPDATE employees SET is_active = FALSE WHERE first_name = 'Priya';

SELECT * FROM employees;

SELECT department, is_active, COUNT(*) as count, AVG(salary) AS avg_salary
FROM employees
GROUP BY department, is_active;

-- having clause
-- Example: Departments with more than 5 employees
SELECT department, COUNT(*) AS total
FROM employees
GROUP BY department
HAVING COUNT(*) > 1;
-- We are telling MySQL: “First group employees by department, then only show
-- those departments where the total number is greater than 5.”


SELECT department, is_active, COUNT(*) as count, AVG(salary) AS avg_salary
FROM employees
GROUP BY department, is_active
HAVING avg_salary > 60000;

-- roll up
SELECT department, SUM(salary) AS sum_of_salary
FROM employees
GROUP BY department WITH ROLLUP;

-- example
SELECT department, is_active, SUM(salary) AS sum_of_salary
FROM employees
GROUP BY department, is_active WITH ROLLUP;

-- example 

-- SELECT department, AVG(salary) AS avg_salary
-- FROM employees
-- WHERE status = 'active'
-- GROUP BY department
-- HAVING avg_salary > 60000;




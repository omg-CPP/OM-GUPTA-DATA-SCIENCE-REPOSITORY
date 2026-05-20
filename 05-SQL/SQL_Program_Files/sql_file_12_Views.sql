SELECT * FROM employees;

-- -- creating a view
CREATE VIEW harry AS 
SELECT first_name, department, salary, ROUND(DATEDIFF(CURRENT_DATE, hire_date) / 365, 0) as years_of_exp FROM employees;

SELECT * FROM harry;

-- update a view
CREATE OR REPLACE VIEW harry AS 
SELECT first_name, last_name, department, salary, ROUND(DATEDIFF(CURRENT_DATE, hire_date) / 365, 0) as years_of_exp FROM employees;

SELECT * FROM harry;

-- DROP a VIEW
DROP VIEW harry;

-- Example Use Case

-- You have this query used 5 times across your app:

-- SELECT customer_id, name, total_orders, status
-- FROM customers
-- WHERE status = 'active' AND total_orders > 5;

-- Instead of repeating it, just create a view:

-- CREATE VIEW top_customers AS
-- SELECT customer_id, name, total_orders, status
-- FROM customers
-- WHERE status = 'active' AND total_orders > 5;

-- Now just do:
-- SELECT * FROM top_customers;






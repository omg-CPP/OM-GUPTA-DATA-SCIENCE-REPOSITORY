USE harryjoins;
SELECT * FROM employees;
SELECT first_name FROM employees;

-- DELIMITER -> ;

-- Example: Simple Procedure to List All Employees

DELIMITER //
CREATE PROCEDURE list_employees()
BEGIN
    SELECT * FROM employees;
    SELECT first_name FROM employees;
END //
DELIMITER ;

-- This creates a procedure named list_employees .

CALL list_employees();

DESCRIBE employees;

DELIMITER //
CREATE PROCEDURE get_emp_by_id(IN emp_id INT)
BEGIN
	SELECT * FROM employees WHERE employee_id = emp_id;
END //
DELIMITER ;

CALL get_emp_by_id(1);

-- To delete a stored procedure:
DROP PROCEDURE IF EXISTS get_emp_by_id; -- PROCEDURE DROPPED






	
	


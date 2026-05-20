USE harryjoins;
SELECT * FROM employees WHERE department = 'IT';

-- How to create a index

-- 1. Single Column Index
CREATE INDEX idx ON employees(department);
SELECT * FROM employees WHERE department = 'IT';

-- read is very fast, but write is a problem
-- 2. Multi-column (Composite) Index :: look up to two columns
CREATE INDEX idx_dep_active ON employees(department, is_active);
SELECT * FROM employees WHERE department = 'IT' AND is_active = TRUE;

-- How to Delete (Drop) an Index
DROP INDEX idx ON employees;
DROP INDEX idx_dep_active ON employees;

CREATE INDEX idx ON employees(department);
CREATE INDEX idx_dep_active ON employees(department, is_active);

SHOW INDEX FROM employees;




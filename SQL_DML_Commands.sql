-- -------------------------------------------------------------------------------
					-- DML (Data Manipulation Language) COMMANDS
-- -------------------------------------------------------------------------------

-- -------------------------------- [1] SELECT COMMAND -------------------------------------

-- 1.1 Retrieves data from a database.
SELECT * FROM employees;

-- 1.2 INSERT: Adds new data into a database table.
INSERT INTO employees (name, position, salary) VALUES ('John Doe', 'Manager', 60000);

-- 1.3 UPDATE: Modifies existing data in a database table.
UPDATE employees SET salary = 65000 WHERE name = 'John Doe';

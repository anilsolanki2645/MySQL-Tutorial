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

-- 1.4 DELETE: Removes data from a database table.
DELETE FROM employees WHERE name = 'John Doe';

-- 2 MERGE (also known as UPSERT in some databases): Combines INSERT and UPDATE operations, but MySQL doesn’t have a direct MERGE command. Instead, you can use INSERT ... ON DUPLICATE KEY UPDATE.
INSERT INTO employees (id, name, position, salary)
VALUES (1, 'John Doe', 'Manager', 60000)
ON DUPLICATE KEY UPDATE
name = VALUES(name),
position = VALUES(position),
salary = VALUES(salary);

-- 2.1 Creating a Sample Table
CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(100),
    salary DECIMAL(10, 2)
);

-- 2.2 Inserting Data into the Table
INSERT INTO employees (name, position, salary) VALUES ('Alice Smith', 'Developer', 55000);


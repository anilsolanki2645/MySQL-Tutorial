-- -------------------------------------------------------------------------------
					-- DCL(DATA CONTROL LANGUAGE) COMMANDS
-- -------------------------------------------------------------------------------

-- -------------------------------- [1] GRANT COMMAND -------------------------------------

-- 1.1 Grant All Privileges to a User on a Databas
GRANT ALL PRIVILEGES ON database_name.* TO 'user'@'hostname';

-- 1.2 Grant Specific Privileges to a User on a Database
GRANT SELECT, INSERT, UPDATE ON database_name.* TO 'user'@'hostname';


-- 1.3 Grant All Privileges to a User on a Specific Table
GRANT ALL PRIVILEGES ON database_name.table_name TO 'user'@'hostname';

-- 1.4 Grant Specific Privileges to a User on a Specific Table
GRANT SELECT, INSERT, UPDATE ON database_name.table_name TO 'user'@'hostname';

-- 1.5 Grant Privileges with GRANT OPTION
GRANT SELECT ON database_name.* TO 'user'@'hostname' WITH GRANT OPTION;

-- 1.6 Grant Privileges to All Databases
GRANT ALL PRIVILEGES ON *.* TO 'user'@'hostname';
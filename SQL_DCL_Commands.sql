-- -------------------------------------------------------------------------------
					-- DCL(DATA CONTROL LANGUAGE) COMMANDS
-- -------------------------------------------------------------------------------

-- -------------------------------- [1] GRANT COMMAND -------------------------------------

-- 1.1 Grant All Privileges to a User on a Databas
GRANT ALL PRIVILEGES ON database_name.* TO 'user'@'hostname';

-- 1.2 Grant Specific Privileges to a User on a Database
GRANT SELECT, INSERT, UPDATE ON database_name.* TO 'user'@'hostname';
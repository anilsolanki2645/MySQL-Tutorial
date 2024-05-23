-- -----------------------------------------------------------------------------------------
                                -- 2. MySQL - User - Management AND Privileges
-- -----------------------------------------------------------------------------------------

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

-- 1.7 Grant Specific Privileges to All Databases
GRANT SELECT, INSERT, UPDATE ON *.* TO 'user'@'hostname';

-- 1.8 Grant Proxy Privileges
GRANT PROXY ON 'user'@'hostname' TO 'proxied_user'@'proxied_hostname';


-- -------------------------------- [2] REVOKE COMMAND -------------------------------------

-- 2.1 Revoke All Privileges from a User on a Database
REVOKE ALL PRIVILEGES ON database_name.* FROM 'user'@'hostname';

-- 2.2 Revoke Specific Privileges from a User on a Database
REVOKE SELECT, INSERT, UPDATE ON database_name.* FROM 'user'@'hostname';

-- 2.3 Revoke All Privileges from a User on a Specific Table:
REVOKE ALL PRIVILEGES ON database_name.table_name FROM 'user'@'hostname';

-- 2.4 Revoke Specific Privileges from a User on a Specific Table:
REVOKE SELECT, INSERT, UPDATE ON database_name.table_name FROM 'user'@'hostname';

-- 2.5 Revoke Privileges with GRANT OPTION:
REVOKE SELECT ON database_name.* FROM 'user'@'hostname' GRANT OPTION;

-- 2.6 Revoke Proxy Privileges: 
REVOKE PROXY ON 'user'@'hostname' FROM 'proxied_user'@'proxied_hostname';

-- -------------------------------- [3] All Permissions list -------------------------------------
/*
                    ALL PRIVILEGES: It permits all privileges to a new user account.
                    CREATE: It enables the user account to create databases and tables.
                    DROP: It enables the user account to drop databases and tables.
                    DELETE: It enables the user account to delete rows from a specific table.
                    INSERT: It enables the user account to insert rows into a specific table.
                    SELECT: It enables the user account to read a database.
                    UPDATE: It enables the user account to update table rows.
*/
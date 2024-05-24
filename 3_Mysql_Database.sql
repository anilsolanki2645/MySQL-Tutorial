-- -----------------------------------------------------------------------------------------
                                    -- 3. MySQL - Database
-- -----------------------------------------------------------------------------------------

-- [1] Create New Database:

    CREATE DATABASE EDURATE;
    CREATE DATABASE EDU;

-- [2] Create New Database WITH IF NOT EXISTS : 

    CREATE DATABASE IF NOT EXISTS EDURATE;

-- [3] Select Databases:

    USE EDURATE;

-- [4] Show Databases:

    SHOW DATABASES;
    SHOW SCHEMAS;

-- [5] Drop Databases and Schemas;

    DROP DATABASE EDURATE;
    DROP DATABASE IF EXISTS EDURATE;
    DROP SCHEMA EDURATE;
    DROP SCHEMA IF EXISTS EDURATE;

-- [6] Copy or Database Baackup;

    mysqldump -u root -p SOCIAL > D:\Database_backup\SOCIAL.sql
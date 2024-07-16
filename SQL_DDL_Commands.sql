
-- -------------------------------------------------------------------------------
					-- DDL(DATA DEFINITION LANGUAGE) COMMANDS
-- -------------------------------------------------------------------------------

-- -------------------------------- [1] CREATE COMMAND -------------------------------------

-- 1.1 Create Database 
CREATE DATABASE IF NOT EXISTS TEMP_DB;

-- Use Database
USE TEMP_DB;

-- 1.2 Create Table
CREATE TABLE IF NOT EXISTS DEMO(
    D_ID INT PRIMARY KEY,
    NAME VARCHAR(30) NOT NULL,
    USER_NAME VARCHAR(30) NOT NULL,
    MOBILE BIGINT CHECK(LENGTH(MOBILE) = 10) NOT NULL,
    COMMENTS TEXT);

-- Note : some Data type is not support like varchar2(only support in oracal) so be aware of this

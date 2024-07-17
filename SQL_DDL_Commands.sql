
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

-- Inserting data into table (It's include in DML Part)

INSERT INTO DEMO (D_ID, NAME, USER_NAME, MOBILE, COMMENTS) VALUES
(1, 'Aarav Patel', 'aaravpatel123', 1234567890, 'This is a comment for Aarav Patel.'),
(2, 'Ananya Singh', 'ananyasingh456', 9876543210, 'This is a comment for Ananya Singh.'),
(3, 'Advait Sharma', 'advaitsharma789', 5551234567, 'This is a comment for Advait Sharma.'),
(4, 'Aaradhya Desai', 'aaradhyadesai234', 9998887776, 'This is a comment for Aaradhya Desai.'),
(5, 'Aryan Gupta', 'aryangupta111', 3332221111, 'This is a comment for Aryan Gupta.'),
(6, 'Aisha Khan', 'aishakhan567', 4445556666, 'This is a comment for Aisha Khan.'),
(7, 'Anand Reddy', 'anandreddy890', 8887776665, 'This is a comment for Anand Reddy.'),
(8, 'Aarushi Joshi', 'aarushijoshi432', 2223334444, 'This is a comment for Aarushi Joshi.'),
(9, 'Aryan Kumar', 'aryankumar098', 6667778889, 'This is a comment for Aryan Kumar.'),
(10, 'Anjali Gupta', 'anjaligupta765', 5556667778, 'This is a comment for Anjali Gupta.'),
(11, 'Aditya Mishra', 'adityamishra321', 4443332227, 'This is a comment for Aditya Mishra.'),
(12, 'Ananya Verma', 'ananyaverma654', 7778889991, 'This is a comment for Ananya Verma.'),
(13, 'Aarav Khanna', 'aaravkhanna987', 2223334448, 'This is a comment for Aarav Khanna.'),
(14, 'Avni Gupta', 'avnigupta123', 6665554443, 'This is a comment for Avni Gupta.'),
(15, 'Aryan Singh', 'aryansingh890', 7776665552, 'This is a comment for Aryan Singh.'),
(16, 'Aditi Choudhury', 'aditichoudhury345', 1112223337, 'This is a comment for Aditi Choudhury.'),
(17, 'Aaradhya Patel', 'aaradhyapatel234', 8889990004, 'This is a comment for Aaradhya Patel.'),
(18, 'Ananya Tiwari', 'ananyatiwari456', 9998887776, 'This is a comment for Ananya Tiwari.'),
(19, 'Aarav Yadav', 'aaravyadav789', 5556667775, 'This is a comment for Aarav Yadav.'),
(20, 'Ananya Singh', 'ananyasingh432', 6665554444, 'This is a comment for Ananya Singh.'),
(21, 'Aryan Mishra', 'aryanmishra987', 3332221111, 'This is a comment for Aryan Mishra.'),
(22, 'Aaradhya Sharma', 'aaradhyasharma654', 2223334448, 'This is a comment for Aaradhya Sharma.'),
(23, 'Ananya Gupta', 'ananyagupta234', 7778889992, 'This is a comment for Ananya Gupta.'),
(24, 'Aarav Singh', 'aaravsingh890', 4443332229, 'This is a comment for Aarav Singh.'),
(25, 'Anika Gupta', 'anikagupta123', 8889990005, 'This is a comment for Anika Gupta.');

-- 1.3 Create Views

CREATE VIEW DEMO_VIEW AS
    SELECT * FROM DEMO;
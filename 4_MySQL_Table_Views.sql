-- -----------------------------------------------------------------------------------------
                                    -- 4. MySQL - Tables and Views
-- -----------------------------------------------------------------------------------------

-- -------------------------------- [1] CREATE TABLE COMMAND -------------------------------------

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

-- NOTE : MySQL not support `IF NOT EXISTS` in Creating a View

-- 1.4 Create a DEMO_LOC Table for Foreign key example

 CREATE TABLE IF NOT EXISTS DEMO_LOC(
    LOC_ID INT PRIMARY KEY,
    ZIP INT NOT NULL,
    AREA VARCHAR(20));

-- Inserting records into DEMO_LOC table
INSERT INTO DEMO_LOC (LOC_ID, ZIP, AREA) VALUES
(1, 110001, 'Connaught Place'),
(2, 110002, 'Chanakyapuri'),
(3, 110003, 'Civil Lines'),
(4, 110004, 'Karol Bagh'),
(5, 110005, 'Rohini'),
(6, 110006, 'Paharganj'),
(7, 110007, 'Shakti Nagar'),
(8, 110008, 'Rajouri Garden'),
(9, 110009, 'Model Town'),
(10, 110010, 'Punjabi Bagh'),
(11, 110011, 'Patel Nagar'),
(12, 110012, 'Uttam Nagar'),
(13, 110013, 'Janakpuri'),
(14, 110014, 'Pitampura'),
(15, 110015, 'Paschim Vihar'),
(16, 110016, 'Vasant Vihar'),
(17, 110017, 'Saket'),
(18, 110018, 'Dwarka'),
(19, 110019, 'Najafgarh'),
(20, 110020, 'South Extension'),
(21, 110021, 'Hauz Khas'),
(22, 110022, 'Malviya Nagar'),
(23, 110023, 'Sarita Vihar'),
(24, 110024, 'Lajpat Nagar'),
(25, 110025, 'Defence Colony');

-- -------------------------------- [2] ALTER TABLE COMMAND -------------------------------------

-- -------------------------------- (2.1) ADD COLUMN -----------------------------------

-- 2.1.1 Add New Column With Default Constraints
ALTER TABLE DEMO
ADD COLUMN LOCATION VARCHAR(20) DEFAULT 'INDIA';

-- 2.1.2 Add New Column With Default Constraints
ALTER TABLE DEMO
ADD COLUMN EMP_NO INT UNIQUE;

-- 2.1.3 Add new columns LOC_ID and add constraints Foreign Key in Demo Table
ALTER TABLE DEMO
ADD COLUMN LOC_ID INT,
ADD FOREIGN KEY (LOC_ID) REFERENCES DEMO_LOC (LOC_ID);

-- 2.1.4 Update LOC_ID in demo table for join

UPDATE DEMO
SET LOC_ID = (SELECT LOC_ID FROM DEMO_LOC WHERE DEMO.D_ID = DEMO_LOC.LOC_ID);

SELECT * FROM DEMO
    JOIN DEMO_LOC
    ON DEMO.LOC_ID = DEMO_LOC.LOC_ID;

-- 2.1.5 Add some columns for Perform Remove Operation in DEMO_LOC
ALTER TABLE DEMO_LOC
    ADD COLUMN DEMO_TEMP_1 VARCHAR(20) UNIQUE;

ALTER TABLE DEMO_LOC
    ADD COLUMN DEMO_TEMP_2 VARCHAR(20);

-- Note : For Other Constrints it's already used in first DEMO table

-- -------------------------------- (2.2) Remove COLUMN-----------------------------------

-- 2.2.1 Remove DEMO_TEMP_2 Columns from DEMO_LOC TABLE
ALTER TABLE DEMO_LOC
    DROP COLUMN DEMO_TEMP_2;

-- 2.2.2 Remove Column Constraints: (Remove Unique Constraints)
ALTER TABLE DEMO_LOC
DROP INDEX DEMO_TEMP_1;

-- -------------------------------- (2.3) Modify -----------------------------------

-- 2.3.1 Modify Column Data Type
ALTER TABLE DEMO_LOC
MODIFY COLUMN DEMO_TEMP_1 INT;

-- 2.3.2 Modify Column Length AND Data Type
ALTER TABLE DEMO_LOC
MODIFY COLUMN DEMO_TEMP_1 VARCHAR(30);

-- 2.3.3 Modify Column Constraints:
ALTER TABLE DEMO_LOC
MODIFY COLUMN DEMO_TEMP_1 INT UNIQUE;

-- 2.3.4 Modify Column Constraints: (Remove Unique Constraints)
ALTER TABLE DEMO_LOC
DROP INDEX DEMO_TEMP_1;

-- -------------------------------- [3] SHOW TABLE -------------------------------------

-- 3.1 SHOW TABLES FOR SELECTED DATABASE;
SHOW TABLES;  

-- 3.2 SHOW TABLES FOR ANY DATABASE;
SHOW TABLES FROM SOCIAL;
SHOW TABLES IN SOCIAL;

-- -------------------------------- [4] RENAME TABLE -------------------------------------

-- 4.1 RENAME TABLE NAME FOR SELECTED DATABASE;
RENAME TABLE COMMENTS TO A_COMMENTS;

-- 4.2 RENAME TABLE NAME FOR ANY DATABASE;
RENAME TABLE TUTORIAL.EMP TO TUTORIAL.EMP1;

-- 4.3 RENAME MULTIPLE TABLE NAME;
RENAME TABLE A_COMMENTS TO COMMENTS, POSTS TO S_POST, USERS TO S_USERS;

-- 4.4 RENAME TABLE NAME USING ALTER COMMAND;
ALTER TABLE S_POST RENAME TO POST;


-- -------------------------------- [5] TRUNCATE TABLE -------------------------------------

-- 5.1 TRUNCATE TABLE 
TRUNCATE TABLE DUMMY_DEMO;

-- -------------------------------- [6] DESCRIBE TABLE -------------------------------------

-- 6.1 DESCRIBE TABLE USING DESC  
DESC USERS;

-- 6.2 DESCRIBE TABLE USING COLUMNS  
SHOW COLUMNS FROM USERS;  

-- 6.3 DESCRIBE TABLE USING FULL DESCRIPTION 
SHOW FULL COLUMNS FROM USERS;

-- -------------------------------- [7] DROP TABLE -------------------------------------

-- 7.1 DROP TABLE USING DROP COMMAND  
DROP TABLE DUM;

-- 7.2 WE CAN ALSO USE THIS FORMATE IF NEEDED 
DROP [ TEMPORARY ] TABLE [ IF EXISTS ] table_name [ RESTRICT | CASCADE ]; 

-- -------------------------------- [8] TEMPORARY TABLE -------------------------------------

-- 8.1 CREATE TEMPORARY TABLE  
CREATE TEMPORARY TABLE DUM SELECT * FROM POST;

-- 8.2 DROP TEMPORARY TABLE 
DROP TEMPORARY TABLE DUM;


-- -------------------------------- [9] Copy/Clone TABLE -------------------------------------

-- 9.1 COPY TABLE FROM ANOTHER TABLE WHEN TABLE NOT CREATED 
CREATE TABLE IF NOT EXISTS DUM SELECT * FROM USERS;

-- 9.2 COPY TABLE FROM ANOTHER TABLE WHEN TABLE IS ALREADY CREATED
INSERT DUM SELECT * FROM USERS;

-- -------------------------------- [10] REPAIR TABLE -------------------------------------

-- 10.1 REPAIR TABLE
REPAIR TABLE USERS;

-- -------------------------------- [11] Rename Column -------------------------------------

-- 11.1 Rename Column Using CHANGE Command
ALTER TABLE USERS 
CHANGE COLUMN password PASS VARCHAR(20);  

-- 11.2 Rename Column Using RENAME Command
ALTER TABLE USERS 
RENAME COLUMN email TO U_EMAIL;  

-- -------------------------------- [12] Table Locking -------------------------------------

CREATE TABLE info_table (   
    Id INT NOT NULL AUTO_INCREMENT,   
    Name VARCHAR(50) NOT NULL,   
    Message VARCHAR(80) NOT NULL,  
    PRIMARY KEY (Id)   
);  

INSERT INTO info_table (name, message)   
VALUES('Peter', 'Hi'),  
('Joseph', 'Hello'),  
('Mark', 'Welcome');  

SELECT * FROM info_table;  

LOCK TABLE info_table READ;  

-- GETTING A ERROR
INSERT INTO info_table (name, message)   
VALUES ('Suzi', 'Hi');   

LOCK TABLE info_table WRITE;  

INSERT INTO info_table (name, message)   
VALUES ('Suzi', 'Hi'); 

 UNLOCK TABLES;
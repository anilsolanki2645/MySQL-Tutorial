-- -----------------------------------------------------------------------------------------
                                    -- 5. MySQL - Store Procedures
-- -----------------------------------------------------------------------------------------

-- [1] What are Store Procedures in MySQL?
/*      MySQL stored procedures group multiple tasks into one and save the task on the server for future use.
        Stored procedures simplify database management and reduce network traffic.
        MySQL stored procedures are pre-compiled SQL statements stored in a database. They are subroutines containing a name, a parameter list, and SQL statements.
        They are similar to functions or methods in programming languages.
*/

-- [2] When to use Store Procedures (Advantages)?
/*      1. Reduce network traffic
        2. Centralize business logic in the database
        3. Make the database more secure
        4. MySQL looks it up in the database catalog, compiles the code, places it in the cache memory, and executes it.
*/

-- [3] Disadvantages of Store Procedures
/*      1. Resource usage
        2. Troubleshooting 
        3. Maintenances 
        4. Store Procedure are slove because take more time to execute insted of simple Queries.
        5. Give too much power to user.
*/

-- [4] Disadvantages of Store Procedures
/*      1. Resource usage
        2. Troubleshooting 
        3. Maintenances 
        4. Store Procedure are slove because take more time to execute insted of simple Queries.
        5. Give too much power to user.
*/

-- [5] Building Blocks of Store Procedures :
/*      1. Procedure Name 
        2. Parameters
        3. Variables
        4. SQL Statements
        5. Procedure Call
*/

-- [6] Procedure Name:
/*
        Every stored procedure has a unique name that identifies it within the database.


        CREATE PROCEDURE Demo_Five_Records()
        BEGIN
            use TEMP_DB;
            SELECT * FROM DEMO LIMIT 5;
        END
*/

-- [7] stored procedure without a parameter:
/*      
        DELIMITER //: Changes the statement delimiter to //. This allows the use of semicolons within the procedure body without ending the procedure definition prematurely.

        CREATE PROCEDURE GetDemoRecords(): Defines a new stored procedure named GetDemoRecords without any parameters.

        BEGIN ... END: Encloses the procedure's body. This is where the SQL statements to be executed are placed.

        SELECT * FROM TEMP_DB.DEMO LIMIT 5;: The SQL statement that selects the first five records from the DEMO table in the TEMP_DB database.

        DELIMITER ;: Resets the statement delimiter back to ; after the procedure definition is complete.
*/

        DELIMITER //

        DROP PROCEDURE IF EXISTS GetDemoRecords;
        CREATE PROCEDURE GetDemoRecords()
        BEGIN
            SELECT * FROM TEMP_DB.DEMO LIMIT 5;
        END //

        DELIMITER ;

        --  you can call it using the CALL statement:
        CALL GetDemoRecords();

-- [8] Stored Procedure with a Parameter:
        
        -- Stored procedures can have input parameters that allow you to pass values into the procedure at runtime.

-- 8.1 Stored Procedure with an IN Parameter:

        DELIMITER //
        
        DROP PROCEDURE IF EXISTS GetRecordsById;
        CREATE PROCEDURE GetRecordsById(IN record_id INT)
        BEGIN
            SELECT * FROM TEMP_DB.DEMO WHERE D_ID = record_id;
        END //

        DELIMITER ;

        --  you can call it using the CALL statement:
        CALL GetRecordsById(3);

-- 8.2 Stored Procedure with an OUT Parameter:

        DELIMITER //

        DROP PROCEDURE IF EXISTS GetRecordCount;
        CREATE PROCEDURE GetRecordCount(OUT total_records INT)
        BEGIN
            SELECT COUNT(*) INTO total_records FROM TEMP_DB.DEMO;
        END //

        DELIMITER ;

        -- Set or assign variable value
        SET @total = 2;

        -- call the procedure
        CALL GetRecordCount(@total);

        -- Final Output
        SELECT @total;

-- 8.3 Stored Procedure with an INOUT Parameter:

        DELIMITER //

        DROP PROCEDURE IF EXISTS UpdateValue;
        CREATE PROCEDURE UpdateValue(INOUT value INT)
        BEGIN
            SET value = value * 2;
        END //

        DELIMITER ;

        -- Set or assign variable value
        SET @value = 5;

        -- call the procedure
        CALL UpdateValue(@value);

        -- Final Output
        SELECT @value;

-- [9] Session Variables and Local Variables in a Stored Procedure:

/*
        9.1. Local Variable (local_var):

            - Declared with the DECLARE statement.
            - Local to the procedure and exists only within the block of code where it is declared.
            - Initialized with a default value of 10.

        9.2. Session Variable (@session_var):

            - Prefixed with @.
            - Exists for the duration of the session and can be accessed across different procedures or queries within the same session.
            - Initialized with a value of 20.

        9.3. Using Local Variable to Update Session Variable:

            - The session variable @session_var is updated by adding the value of the local variable local_var.
*/

        DELIMITER //

        DROP PROCEDURE IF EXISTS VariableExampleProcedure;
        CREATE PROCEDURE VariableExampleProcedure()
        BEGIN
            -- Local Variable
            DECLARE local_var INT DEFAULT 10;

            -- Session Variable
            SET @session_var = 20;

            -- Update the session variable using the local variable
            SET @session_var = @session_var + local_var;

            -- Select the variables to see their values
            SELECT local_var AS LocalVariable, @session_var AS SessionVariable;
        END //

        DELIMITER ;

        -- calling the procedure
        CALL VariableExampleProcedure();

-- [10] stored procedures in MySQL that use the SELECT, INSERT, UPDATE, and DELETE statements.

-- 10.1 Example Table Structure:
        
        CREATE TABLE IF NOT EXISTS TEMP_DB.DEMO2 (
            id INT AUTO_INCREMENT PRIMARY KEY,
            name VARCHAR(100),
            value INT
        );

-- 10.2 Stored Procedure with INSERT:

        DELIMITER //

        DROP PROCEDURE IF EXISTS InsertDemoRecord;
        CREATE PROCEDURE InsertDemoRecord(IN new_name VARCHAR(100), IN new_value INT)
        BEGIN
            INSERT INTO TEMP_DB.DEMO2 (name, value) VALUES (new_name, new_value);
        END //

        DELIMITER ;

        -- Calling the procedure
        CALL InsertDemoRecord('HARSHIL', 412);
        CALL InsertDemoRecord('ANIL', 132);
        CALL InsertDemoRecord('KULDIP', 431);
        CALL InsertDemoRecord('JAY', 452);

-- 10.3 Stored Procedure with UPDATE:

        DELIMITER //

        DROP PROCEDURE IF EXISTS UpdateDemoRecord;
        CREATE PROCEDURE UpdateDemoRecord(IN record_id INT, IN new_name VARCHAR(100))
        BEGIN
            UPDATE TEMP_DB.DEMO2 SET name = new_name WHERE id = record_id;
        END //
        
        DELIMITER ;
        
        -- Calling the procedure
        CALL UpdateDemoRecord(1, 'AMIT');

-- 10.4 Stored Procedure with DELETE:

        DELIMITER //

        DROP PROCEDURE IF EXISTS DeleteDemoRecord;
        CREATE PROCEDURE DeleteDemoRecord(IN record_id INT)
        BEGIN
            DELETE FROM TEMP_DB.DEMO2 WHERE id = record_id;
        END //

        DELIMITER ;

        -- Calling the procedure
        CALL DeleteDemoRecord(2);

-- 10.5 Stored Procedure with SELECT:
    
        DELIMITER //

        DROP PROCEDURE IF EXISTS SelectDemoRecords;
        CREATE PROCEDURE SelectDemoRecords()
        BEGIN
            SELECT * FROM TEMP_DB.DEMO2 LIMIT 10;
        END //

        DELIMITER ;

        -- Calling the procedure
        CALL SelectDemoRecords();

-- [11] Altering Stored Procedures

        -- MySQL does not support an ALTER PROCEDURE statement. 

        DROP PROCEDURE IF EXISTS TEMP_DB.SelectDemoRecords;

-- [12] Listing Stored Procedures:

-- 12.1 To list all stored procedures in the current database:

        SHOW PROCEDURE STATUS WHERE Db = 'TEMP_DB';

-- 12.2 To see the details of a specific stored procedure:
        
        SHOW CREATE PROCEDURE TEMP_DB.SelectDemoRecords;

-- [13] Conditionals in Stored Procedures

-- 13.1 "REPLACE INTO" either inserts a new row or replaces an existing row if a duplicate key is found.

        DELIMITER //

        CREATE PROCEDURE ReplaceDemoRecord(IN record_id INT, IN new_name VARCHAR(100), IN new_value INT)
        BEGIN
            REPLACE INTO TEMP_DB.DEMO2 (id, name, value) VALUES (record_id, new_name, new_value);
        END //

        DELIMITER ;

        -- Calling the Procedure
        CALL ReplaceDemoRecord(1, 'Hashmukh', 999);

-- 13.2 Checking if a Record Exists Before INSERT

        DELIMITER //

        CREATE PROCEDURE InsertIfNotExists(IN new_name VARCHAR(100), IN new_value INT)
        BEGIN
            IF NOT EXISTS (SELECT 1 FROM TEMP_DB.DEMO2 WHERE name = new_name) THEN
                INSERT INTO TEMP_DB.DEMO2 (name, value) VALUES (new_name, new_value);
            END IF;
        END //

        DELIMITER ;

        -- Calling the Procedure
        CALL InsertIfNotExists('Unique Name', 123);     

-- 13.3 Checking if a Record Exists Before UPDATE

        DELIMITER //

        CREATE PROCEDURE UpdateIfExists(IN record_id INT, IN new_name VARCHAR(100))
        BEGIN
            IF EXISTS (SELECT 1 FROM TEMP_DB.DEMO2 WHERE id = record_id) THEN
                UPDATE TEMP_DB.DEMO2 SET name = new_name WHERE id = record_id;
            END IF;
        END //

        DELIMITER ;

        -- Calling the Procedure
        CALL UpdateIfExists(1, 'ronak');


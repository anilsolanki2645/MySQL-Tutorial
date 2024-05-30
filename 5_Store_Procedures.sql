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







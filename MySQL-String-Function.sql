-- -----------------------------------------------------------------------------------------
                                    -- MySQL-String-Functions.
-- -----------------------------------------------------------------------------------------

-- [1] ASCII()

    -- This function returns numeric value of left-most character.
    SELECT ASCII('A');

/*
+------------+
| ASCII('A') |
+------------+
|         65 |
+------------+  */

-- [2] BIN()

    -- This function returns a string representation of the argument (Binary Value).
    SELECT BIN(5);

/*
+--------+
| BIN(5) |
+--------+
| 101    |
+--------+  */

-- [3] BIT_LENGTH()

    -- This function returns length of argument in bits.  
    SELECT BIT_LENGTH('abc');

/*
+-------------------+
| BIT_LENGTH('abc') |
+-------------------+
|                24 |
+-------------------+   */

-- [4] CHAR()

    -- This function returns the character for each integer passed.
    SELECT CHAR(65, 66, 67);

/*
+----------------+
| result         |
+----------------+
| 0x414243       |
+----------------+  */

    SELECT CAST(CHAR(65, 66, 67) AS CHAR) AS result;
    SELECT CONVERT(CHAR(65, 66, 67) USING latin1) AS result;

/*
+--------+
| result |
+--------+
| ABC    |
+--------+  */

-- [5] CHAR_LENGTH(), LENGTH() AND OCTET_LENGTH() 

    -- This function returns number of characters in argument.
    SELECT CHAR_LENGTH('hello');

    -- This function returns the length of a string in bytes.
    SELECT LENGTH(5678);    

    -- This function is a synonym for LENGTH().
    SELECT OCTET_LENGTH('Hello');


/*
+----------------------+
| CHAR_LENGTH('hello') |
+----------------------+
|                    5 |
+----------------------+    

+--------------+
| LENGTH(5678) |
+--------------+
|            4 |
+--------------+   

+-----------------------+
| OCTET_LENGTH('Hello') |
+-----------------------+
|                     5 |
+-----------------------+    */
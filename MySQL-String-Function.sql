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
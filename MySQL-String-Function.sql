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

-- [6] CONCAT()

    -- This function returns concatenated string.
    SELECT CONCAT('Hello', ' ', 'World');

/*
+-------------------------------+
| CONCAT('Hello', ' ', 'World') |
+-------------------------------+
| Hello World                   |
+-------------------------------+   */

-- [7] CONCAT_WS()

    -- This function returns concatenate with separator.
    SELECT CONCAT_WS('-', '2024', '05', '20');

/*
+------------------------------------+
| CONCAT_WS('-', '2024', '05', '20') |
+------------------------------------+
| 2024-05-20                         |
+------------------------------------+  */

-- [8] ELT()

    -- This function returns string at index number.
    SELECT ELT(3, 'one', 'two', 'three', 'four');

/*
+---------------------------------------+
| ELT(3, 'one', 'two', 'three', 'four') |
+---------------------------------------+
| three                                 |
+---------------------------------------+   */

-- [9] EXPORT_SET()

    -- This function returns a string such that for every bit set in the value bits, you get an on string and for every unset bit, you get an off string.
    SELECT EXPORT_SET(5, 'Y', 'N', ',', 4);

/*
+---------------------------------+
| EXPORT_SET(5, 'Y', 'N', ',', 4) |
+---------------------------------+
| Y,N,Y,N                         |
+---------------------------------+ */

-- [10] FIELD()

    -- This function returns the index (position) of the first argument in the subsequent arguments.
    SELECT FIELD('b','l', 'a', 'b', 'c', 'd');

/*
+------------------------------------+
| FIELD('b','l', 'a', 'b', 'c', 'd') |
+------------------------------------+
|                                  3 |
+------------------------------------+  */

-- [11] FIND_IN_SET()

    -- This function returns the index position of the first argument within the second argument.
     SELECT FIND_IN_SET('b', 'a,b,c,d');

/*
+-----------------------------+
| FIND_IN_SET('b', 'a,b,c,d') |
+-----------------------------+
|                           2 |
+-----------------------------+     */

-- [12] FROM_BASE64()

    -- This function decodes a base-64 encoded string as a binary string.
    SELECT CONVERT(FROM_BASE64('SGVsbG8gd29ybGQ=') USING utf8) AS result;
    SELECT CAST(FROM_BASE64('SGVsbG8gd29ybGQ=') AS CHAR) AS result;

/*
+-------------+
| result      |
+-------------+
| Hello world |
+-------------+     */

-- [13] INSERT()

    -- Inserts a substring at the specified position up to the specified number of characters.
    SELECT INSERT('Hello World', 7, 5, 'MySQL');

/*
+--------------------------------------+
| INSERT('Hello World', 7, 5, 'MySQL') |
+--------------------------------------+
| Hello MySQL                          |
+--------------------------------------+    */

-- [14] INSTR()

    -- This function returns the index of the first occurrence of substring.
    SELECT INSTR('foobar', 'bar');

/*
+------------------------+
| INSTR('foobar', 'bar') |
+------------------------+
|                      4 |
+------------------------+      */

-- [15] LCASE() and LOWER()

    -- This function returns the argument in lowercase.
    SELECT LCASE('HELLO');
    SELECT LOWER('WORLD');

/*
+----------------+
| LCASE('HELLO') |
+----------------+
| hello          |
+----------------+

+----------------+
| LOWER('WORLD') |
+----------------+
| world          |
+----------------+      */

-- [16] LEFT()

    -- This function returns the leftmost number of characters as specified.
    SELECT LEFT('Hello', 2);

/*
+------------------+
| LEFT('Hello', 2) |
+------------------+
| He               |
+------------------+        */

-- [17] LOAD_FILE()

    -- This function is used to load the specified file.
    SELECT LOAD_FILE('C:/Users/lenovo/Downloads/SQL_Learning/HELLO.txt');

/*
+------------------------------------------------------------------------------------------------------------------------------+
| LOAD_FILE('C:/Users/lenovo/Downloads/SQL_Learning/HELLO.txt')                                                                |
+------------------------------------------------------------------------------------------------------------------------------+
| NULL                                                                                                                         |
+------------------------------------------------------------------------------------------------------------------------------+    */

-- [18] LOCATE() AND POSITION()

    -- This function returns the position of the first occurrence of substring.
    SELECT LOCATE('bar', 'foobar');

    -- This function is a synonym for LOCATE().
    SELECT POSITION('bar' IN 'foobar');

/*
+-------------------------+
| LOCATE('bar', 'foobar') |
+-------------------------+
|                       4 |
+-------------------------+

+-----------------------------+
| POSITION('bar' IN 'foobar') |
+-----------------------------+
|                           4 |
+-----------------------------+    */

-- [19] LPAD()

    -- This function returns the string argument, left-padded with the specified string.
    SELECT LPAD('Hello', 10, '#');

/*
+------------------------+
| LPAD('Hello', 10, '#') |
+------------------------+
| #####Hello             |
+------------------------+  */

-- [20] LTRIM()

    -- This function is used to removes leading spaces from the given string.
    SELECT LTRIM('   Hello');

/*
+---------+
| LSTRING |
+---------+
| Hello   |
+---------+     */

-- [21] MAKE_SET()

    -- This function returns a set of comma-separated strings that have the corresponding bit in bits set. (3+2=5)
    SELECT MAKE_SET(5, 'e', 'b', 'f', 'd', 'A');

/*
+--------------------------------------+
| MAKE_SET(5, 'e', 'b', 'f', 'd', 'A') |
+--------------------------------------+
| e,f                                  |
+--------------------------------------+    */

-- [23] MID(), SUBSTR() AND SUBSTRING()

    -- This function returns a substring starting from the specified position.
    SELECT MID('Hello World', 7, 4);

    -- This function returns the substring as specified.
    SELECT SUBSTR('Hello World', 7, 5);

    -- This function returns the substring as specified.
    SELECT SUBSTRING('Hello World', 7, 5);

/*
+--------------------------+
| MID('Hello World', 7, 4) |
+--------------------------+
| Worl                     |
+--------------------------+    

+-----------------------------+
| SUBSTR('Hello World', 7, 5) |
+-----------------------------+
| World                       |
+-----------------------------+    

+--------------------------------+
| SUBSTRING('Hello World', 7, 5) |
+--------------------------------+
| World                          |
+--------------------------------+    */

-- [24] OCT()

    -- This function returns a string representation of the octal argument.
    SELECT OCT(8);

/*
+--------+
| OCT(8) |
+--------+
| 10     |
+--------+  */

-- [25] ORD()

    -- If the leftmost character of the argument is a multi-byte character, returns the code for that character.
    SELECT ORD('A');

/*
+----------+
| ORD('A') |
+----------+
|       65 |
+----------+    */

-- [26] QUOTE()

    -- This function escapes the argument for use in an SQL statement.
    SELECT QUOTE('Hello "MySQL"');

/*
+------------------------+
| QUOTE('Hello "MySQL"') |
+------------------------+
| 'Hello "MySQL"'        |
+------------------------+      */

-- [27] REPLACE()

    -- This function replaces the matched sub string with the replacement string and returns the result.
    SELECT REPLACE('Hello World', 'World', 'MySQL');

/*
+------------------------------------------+
| REPLACE('Hello World', 'World', 'MySQL') |
+------------------------------------------+
| Hello MySQL                              |
+------------------------------------------+    */
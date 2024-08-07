-- -----------------------------------------------------------------------------------------
                                    -- MySQL - Math AND Numeric - Functions.
-- -----------------------------------------------------------------------------------------

-- [1] ABS()

    -- Returns the absolute value of a numeric expression.
    SELECT ABS(-8);
    SELECT ABS(8);   

/*

+---------+
| ABS(-8) |
+---------+
|       8 |
+---------+

+---------+
| ABS(8) |
+---------+
|       8 |
+---------+ */

-- [2] ACOS()

    -- Returns the arccosine of a numeric expression. Returns NULL if the value is not in the range -1 to 1.
    SELECT ACOS(1);  -- Returns 0 (0 radians, which is 0 degrees)
    SELECT ACOS(0);  -- Returns 1.5708 (π/2 radians, which is 90 degrees)

/*
+---------+
| ACOS(1) |
+---------+
|       0 |
+---------+

+--------------------+
| ACOS(0)            |
+--------------------+
| 1.5707963267948966 |
+--------------------+  */

-- [3] ASIN()

    -- Returns the arcsine of a numeric expression. Returns NULL if the value is not in the range -1 to 1.
    SELECT ASIN(0);  -- Returns 0 (0 radians, which is 0 degrees)
    SELECT ASIN(1);  -- Returns 1.5708 (π/2 radians, which is 90 degrees)

/*
+---------+
| ASIN(0) |
+---------+
|       0 |
+---------+

+--------------------+
| ASIN(1)            |
+--------------------+
| 1.5707963267948966 |
+--------------------+      */

-- [4] ATAN()

    -- Returns the arctangent of a numeric expression.
    SELECT ATAN(1);  -- Returns 0.7854 (π/4 radians, which is 45 degrees)

/*
+--------------------+
| ATAN(1)            |
+--------------------+
| 0.7853981633974483 |
+--------------------+  */

-- [5]  ATAN2()

    -- Returns the arctangent of the two variables passed to it. The result is in radians.
    SELECT ATAN2(1, 1);  -- Returns 0.7854 (π/4 radians, which is 45 degrees)
    SELECT ATAN2(1, 0);  -- Returns 1.5708 (π/2 radians, which is 90 degrees)

/*
+--------------------+
| ATAN2(1, 1)        |
+--------------------+
| 0.7853981633974483 |
+--------------------+

+--------------------+
| ATAN2(1, 0)        |
+--------------------+
| 1.5707963267948966 |
+--------------------+      */

-- [6] CEIL() AND CEILING()

    -- Returns the smallest integer value that is not less than the passed numeric expression.
    SELECT CEIL(2.3);  -- Returns 3
    SELECT CEIL(-2.3); -- Returns -2

    -- Returns the smallest integer value that is not less than the passed numeric expression.
    SELECT CEILING(2.3);  -- Returns 3
    SELECT CEILING(-2.3); -- Returns -2

/*
+-----------+
| CEIL(2.3) |
+-----------+
|         3 |
+-----------+

+------------+
| CEIL(-2.3) |
+------------+
|         -2 |
+------------+

+--------------+
| CEILING(2.3) |
+--------------+
|            3 |
+--------------+

+---------------+
| CEILING(-2.3) |
+---------------+
|            -2 |
+---------------+    */

-- [7] CONV()

    -- Converts a numeric expression from one base to another.
    SELECT CONV('a', 16, 2);  -- Converts hexadecimal 'a' to binary, returns '1010'
    SELECT CONV('1010', 2, 10); -- Converts binary '1010' to decimal, returns '10'  

/*
+------------------+
| CONV('a', 16, 2) |
+------------------+
| 1010             |
+------------------+ 

+---------------------+
| CONV('1010', 2, 10) |
+---------------------+
| 10                  |
+---------------------+     */

-- [8] COS()

    -- Returns the cosine of a numeric expression. The numeric expression should be expressed in radians.
    SELECT COS(0);  -- Returns 1
    SELECT COS(PI()/3);  -- Returns 0.5

/*
+--------+
| COS(0) |
+--------+
|      1 |
+--------+

+--------------------+
| COS(PI()/3)        |
+--------------------+
| 0.5000000000000001 |
+--------------------+      */

-- [9] COT()

    -- Returns the cotangent of a numeric expression.
    SELECT COT(PI()/4);  -- Returns 1

/*
+----------------+
| CRC32('MySQL') |
+----------------+
|     3259397556 |
+----------------+  */

-- [10] CRC32()

    -- Returns the Cyclic Redundancy Check (CRC) for the given value.
    SELECT CRC32('MySQL');  -- Returns 3259397556

/*
+----------------+
| CRC32('MySQL') |
+----------------+
|     3259397556 |
+----------------+  */

-- [11] DEGREES()

    -- Returns a numeric expression converted from radians to degrees.
    SELECT DEGREES(PI());  -- Returns 180
    SELECT DEGREES(PI()/2);  -- Returns 90

/*
+---------------+
| DEGREES(PI()) |
+---------------+
|           180 |
+---------------+

+-----------------+
| DEGREES(PI()/2) |
+-----------------+
|              90 |
+-----------------+     */

-- [12]  EXP()

    -- Returns the base of the natural logarithm (e) raised to the power of the passed numeric expression.
    SELECT EXP(1);  -- Returns 2.718281828459045 (e)
    SELECT EXP(2);  -- Returns 7.38905609893065 (e^2)

/*
+-------------------+
| EXP(1)            |
+-------------------+
| 2.718281828459045 |
+-------------------+

+------------------+
| EXP(2)           |
+------------------+
| 7.38905609893065 |
+------------------+    */

-- [13] FLOOR()

    -- Returns the largest integer value that is not greater than the passed numeric expression.
    SELECT FLOOR(2.7);  -- Returns 2
    SELECT FLOOR(-2.7); -- Returns -3
/*
+------------+
| FLOOR(2.7) |
+------------+
|          2 |
+------------+

+-------------+
| FLOOR(-2.7) |
+-------------+
|          -3 |
+-------------+     */

-- [14] FORMAT()

    -- Returns a numeric expression rounded to a number of decimal places.
    SELECT FORMAT(1234.5678, 2);  -- Returns '1,234.57'
    SELECT FORMAT(1234.5678, 0);  -- Returns '1,235'

/*
+----------------------+
| FORMAT(1234.5678, 2) |
+----------------------+
| 1,234.57             |
+----------------------+

+----------------------+
| FORMAT(1234.5678, 0) |
+----------------------+
| 1,235                |
+----------------------+    */

-- [15]  HEX()

    -- Returns the hexadecimal representation of the given value.
    SELECT HEX('abc');  -- Returns '616263'
    SELECT HEX(255);  -- Returns 'FF'

/*
+------------+
| HEX('abc') |
+------------+
| 616263     |
+------------+

+----------+
| HEX(255) |
+----------+
| FF       |
+----------+ */

-- [16]  LOG()

    -- Returns the natural logarithm of the passed numeric expression.
    SELECT LOG(1);  -- Returns 0
    SELECT LOG(EXP(1));  -- Returns 1

/*
+--------+
| LOG(1) |
+--------+
|      0 |
+--------+

+-------------+
| LOG(EXP(1)) |
+-------------+
|           1 |
+-------------+     */

-- [17] LOG10()

    -- Returns the base-10 logarithm of the passed numeric expression.
    SELECT LOG10(100);  -- Returns 2
    SELECT LOG10(1000); -- Returns 3

/*
+------------+
| LOG10(100) |
+------------+
|          2 |
+------------+

+-------------+
| LOG10(1000) |
+-------------+
|           3 |
+-------------+     */

-- [18] LOG2()

    -- Returns the base-2 logarithm of the passed numeric expression.
    SELECT LOG2(8);  -- Returns 3
    SELECT LOG2(16); -- Returns 4

/*
+---------+
| LOG2(8) |
+---------+
|       3 |
+---------+

+----------+
| LOG2(16) |
+----------+
|        4 |
+----------+    */

-- [19] MOD()

    -- Returns the remainder of one expression by dividing by another expression.
    SELECT MOD(10, 3);  -- Returns 1
    SELECT MOD(10, 2);  -- Returns 0

/*
+------------+
| MOD(10, 3) |
+------------+
|          1 |
+------------+

+------------+
| MOD(10, 2) |
+------------+
|          0 |
+------------+      */

-- [20] PI()

    -- Returns the value of pi.
    SELECT PI();  -- Returns 3.141593

/*
+----------+
| PI()     |
+----------+
| 3.141593 |
+----------+    */

-- [21] POW() AND  POWER()

    -- Returns the value of one expression raised to the power of another expression.
    SELECT POW(2, 3);  -- Returns 8
    SELECT POW(5, 2);  -- Returns 25

    SELECT POWER(2, 3);  -- Returns 8
    SELECT POWER(5, 2);  -- Returns 25

/*
+-----------+
| POW(2, 3) |
+-----------+
|         8 |
+-----------+

+-----------+
| POW(5, 2) |
+-----------+
|        25 |
+-----------+ 

+-------------+
| POWER(2, 3) |
+-------------+
|           8 |
+-------------+     

+-------------+
| POWER(5, 2) |
+-------------+
|          25 |
+-------------+     */

-- [22] RADIANS()

    -- Returns the value of the passed expression converted from degrees to radians.   
    SELECT RADIANS(180);  -- Returns 3.141593
    SELECT RADIANS(90);   -- Returns 1.570796

/*
+-------------------+
| RADIANS(180)      |
+-------------------+
| 3.141592653589793 |
+-------------------+

+--------------------+
| RADIANS(90)        |
+--------------------+
| 1.5707963267948966 |
+--------------------+      */

-- [23] RAND()

    -- Returns a random floating-point value within the range 0 to 1.0.
    SELECT RAND();  -- Returns a random number between 0 and 1, e.g., 0.123456
    SELECT RAND(5); -- Returns a random number with seed 5

/*
+--------------------+
| RAND()             |
+--------------------+
| 0.9155298647615405 |
+--------------------+

+---------------------+
| RAND(5)             |
+---------------------+
| 0.40613597483014313 |
+---------------------+     */

-- [24] ROUND()

    -- Returns the numeric expression rounded to an integer. Can be used to round an expression to a number of decimal points.
    SELECT ROUND(123.456);     -- Returns 123
    SELECT ROUND(123.456, 2);  -- Returns 123.46

/*
+----------------+
| ROUND(123.456) |
+----------------+
|            123 |
+----------------+

+-------------------+
| ROUND(123.456, 2) |
+-------------------+
|            123.46 |
+-------------------+   */

-- [25] SQRT()

    -- Returns the non-negative square root of the numeric expression.
    SELECT SQRT(16);

/*
+----------+
| SQRT(16) |
+----------+
|        4 |
+----------+    */

-- [26] TRUNCATE()

    -- Returns the numeric expression truncated to the specified number of decimal places. If the number of decimal places is 0, the result will have no decimal point.
    SELECT TRUNCATE(123.4567, 2);  -- Returns 123.45
    SELECT TRUNCATE(123.4567, 0);  -- Returns 123

/*
+-----------------------+
| TRUNCATE(123.4567, 2) |
+-----------------------+
|                123.45 |
+-----------------------+

+-----------------------+
| TRUNCATE(123.4567, 0) |
+-----------------------+
|                   123 |
+-----------------------+   */
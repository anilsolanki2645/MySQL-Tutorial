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
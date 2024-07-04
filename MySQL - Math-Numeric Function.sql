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
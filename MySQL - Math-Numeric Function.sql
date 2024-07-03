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
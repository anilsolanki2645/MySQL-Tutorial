-- -----------------------------------------------------------------------------------------
									-- MySQL-Date-Functions.
-- -----------------------------------------------------------------------------------------

-- [1] ADDDATE() AND DATE_ADD()

	-- This function adds a specified time interval to a date.
	SELECT ADDDATE('2024-05-01', INTERVAL 10 DAY) AS Add_Date;

	SELECT DATE_ADD('2024-05-01', INTERVAL 10 DAY) AS DATE_ADD;

/*
+------------+
| Add_Date   |
+------------+
| 2024-05-11 |
+------------+

+------------+
| DATE_ADD   |
+------------+
| 2024-05-11 |
+------------+	*/

-- [2] DATE_SUB() AND SUBDATE()

	-- This function subtracts a specified time interval from a date.
	SELECT DATE_SUB('2024-05-01', INTERVAL 10 DAY) AS SUB_DATE;

	-- This function subtracts a specified interval from a date.
	SELECT SUBDATE('2024-05-01', INTERVAL 10 DAY) AS SUB_DATE;

/*
+------------+
| SUB_DATE   |
+------------+
| 2024-04-21 |
+------------+		*/

-- [3] ADDTIME()

	-- This function adds a specified time interval to a time or datetime.
	SELECT ADDTIME('10:00:00', '02:30:00') AS add_time;

/*
+----------+
| add_time |
+----------+
| 12:30:00 |
+----------+	*/

-- [4] CONVERT_TZ()

	-- This function converts a datetime value from one timezone to another. []
	SELECT CONVERT_TZ('2024-05-01 10:00:00', 'UTC', 'America/New_York') AS timezone;

/*
+----------+
| timezone |
+----------+
| NULL     |
+----------+	*/

-- [5] CURDATE()

	-- This function returns the current date.
	SELECT CURDATE();

/*
+------------+
| CURDATE()  |
+------------+
| 2024-05-20 |
+------------+	*/

	-- Synonyms for CURDATE()
	-- 4.1 CURRENT_DATE ,CURRENT_DATE()
	SELECT CURRENT_DATE;
	SELECT CURRENT_DATE()

/*

 +--------------+
| CURRENT_DATE |
+--------------+
| 2024-05-20   |
+--------------+

+----------------+
| CURRENT_DATE() |
+----------------+
| 2024-05-20     |
+----------------+	*/

-- [6] CURTIME()

-- This function returns the current TIME.
	SELECT CURTIME();

/*
+-----------+
| CURTIME() |
+-----------+
| 11:55:41  |
+-----------+	*/

	-- Synonyms for CURTIME()
	-- 4.1 CURRENT_TIME and CURRENT_TIME()
	SELECT CURRENT_TIME;
	SELECT CURRENT_TIME();

/*
+--------------+
| CURRENT_TIME |
+--------------+
| 11:58:37     |
+--------------+

+----------------+
| CURRENT_TIME() |
+----------------+
| 11:58:44       |
+----------------+	*/

-- [7] NOW()

-- This function returns the current TIMESTAMP.
	SELECT NOW();

/*
+---------------------+
| NOW()               |
+---------------------+
| 2024-05-20 12:00:06 |
+---------------------+	 */

	-- Synonyms for NOW()
	-- 4.1 CURRENT_TIMESTAMP and CURRENT_TIMESTAMP()
	SELECT CURRENT_TIMESTAMP;
	SELECT CURRENT_TIMESTAMP();

	--OTHER Synonyms for NOW()
	--LOCALTIME(), LOCALTIME, LOCALTIMESTAMP, LOCALTIMESTAMP(), SYSDATE();
	SELECT LOCALTIME();
	SELECT LOCALTIME;
	SELECT LOCALTIMESTAMP();
	SELECT LOCALTIMESTAMP;
	SELECT SYSDATE();

/*
+---------------------+
| CURRENT_TIMESTAMP   |
+---------------------+
| 2024-05-20 12:01:20 |
+---------------------+

+---------------------+
| CURRENT_TIMESTAMP() |
+---------------------+
| 2024-05-20 12:01:25 |
+---------------------+	 */

-- [8] DATE_FORMAT()

	-- This function formats a date according to the specified format.
	SELECT DATE_FORMAT('2024-05-01', '%W, %M %d, %Y') AS DATE_FORMATE;

/*
+-------------------------+
| DATE_FORMATE            |
+-------------------------+
| Wednesday, May 01, 2024 |
+-------------------------+		*/

-- [9] DATE()

	-- This function extracts the date part of a date or datetime expression.
	SELECT DATE('2024-05-01 10:30:00') AS DATE;

/*
+------------+
| DATE       |
+------------+
| 2024-05-01 |
+------------+		*/

-- [10] DATEDIFF()

	-- This function returns the number of days between two dates.
	SELECT DATEDIFF('2024-05-01', '2024-04-20') AS DATE_DIFF;

/*
+-----------+
| DATE_DIFF |
+-----------+
|        11 |
+-----------+	*/

-- [11] DAY() AND DAYOFMONTH()

	-- This function retrieves the day of the month from a given date.
	SELECT DAY(NOW());

	-- This function returns the day of the month (1-31).
	SELECT DAYOFMONTH('2024-05-05');

/*
+------------+
| DAY(NOW()) |
+------------+
|         20 |
+------------+	

+--------------------------+
| DAYOFMONTH('2024-05-05') |
+--------------------------+
|                        5 |
+--------------------------+	*/

-- [12] DAYNAME() and DAYOFWEEK()

	-- This function returns the name of the weekday.
	SELECT DAYNAME('2024-05-01');

/*
+-----------------------+
| DAYNAME('2024-05-01') |
+-----------------------+
| Wednesday             |
+-----------------------+	*/

	-- This function returns the weekday index of the argument (1=Sunday, 2=Monday, ..., 7=Saturday).
	SELECT DAYOFWEEK('2024-05-19');

/*
+-------------------------+
| DAYOFWEEK('2024-05-19') |
+-------------------------+
|                       1 |
+-------------------------+		*/


-- [13] DAYOFYEAR()

	-- This function returns the day of the year (1-366).
	SELECT DAYOFYEAR(NOW());

/*
+------------------+
| DAYOFYEAR(NOW()) |
+------------------+
|              141 |
+------------------+	*/

-- [14] EXTRACT()

	-- This function extracts part of a date.
	SELECT EXTRACT(YEAR FROM '2024-05-01') AS YEAR;

/*
+------+
| YEAR |
+------+
| 2024 |
+------+	*/

-- [15] FROM_DAYS()

	-- This function converts a day number to a date.
	SELECT FROM_DAYS(739427);

/*
+-------------------+
| FROM_DAYS(739427) |
+-------------------+
| 2024-06-25        |
+-------------------+	*/

-- [16] FROM_UNIXTIME()

	-- This function formats a Unix timestamp as a date.
	SELECT FROM_UNIXTIME(1716013600);

/*
+---------------------------+
| FROM_UNIXTIME(1716013600) |
+---------------------------+
| 2024-05-18 11:56:40       |
+---------------------------+	*/

-- [17] HOUR()

	-- This function extracts the hour from a time or datetime.
	SELECT HOUR('2024-05-01 10:30:00');
	SELECT HOUR(NOW());

/*
+-----------------------------+
| HOUR('2024-05-01 10:30:00') |
+-----------------------------+
|                          10 |
+-----------------------------+

+-------------+
| HOUR(NOW()) |
+-------------+
|          12 |
+-------------+		*/

-- [18] LAST_DAY()

	-- This function returns the last day of the month for the argument.
	SELECT LAST_DAY('2024-05-01');
	SELECT LAST_DAY(NOW());

/*
+------------------------+
| LAST_DAY('2024-05-01') |
+------------------------+
| 2024-05-31             |
+------------------------+	*/

-- [19] MAKEDATE()

	-- This function creates a date from the year and day of the year.
	SELECT MAKEDATE(2024, 141) AS MAKE_DATE;

/*
+------------+
| MAKE_DATE  |
+------------+
| 2024-05-20 |
+------------+	*/

-- [20] MAKETIME()

	-- This function creates a time value from the given hours, minutes, and seconds.
	SELECT MAKETIME(10, 30, 0);

/*
+---------------------+
| MAKETIME(10, 30, 0) |
+---------------------+
| 10:30:00            |
+---------------------+		*/

-- [21] MICROSECOND()

	-- This function returns the microseconds from a datetime or time expression.
	SELECT MICROSECOND('2024-05-01 10:30:00.123456');

/*
+-------------------------------------------+
| MICROSECOND('2024-05-01 10:30:00.123456') |
+-------------------------------------------+
|                                    123456 |
+-------------------------------------------+	*/

-- [22] MINUTE()

	-- This function returns the minute from a time or datetime.
	SELECT MINUTE('2024-05-01 10:30:00');
	SELECT MINUTE(NOW());

/*
+-------------------------------+
| MINUTE('2024-05-01 10:30:00') |
+-------------------------------+
|                            30 |
+-------------------------------+	*/

-- [23] MONTH()

	-- This function returns the month from a date.
	SELECT MONTH('2024-05-01');
	SELECT MONTH(NOW());

/*
+---------------------+
| MONTH('2024-05-01') |
+---------------------+
|                   5 |
+---------------------+		*/

-- [24] MONTHNAME()

	-- This function returns the name of the month.
	SELECT MONTHNAME('2024-04-01');
	SELECT MONTHNAME(NOW());

/*
+-------------------------+
| MONTHNAME('2024-04-01') |
+-------------------------+
| April                   |
+-------------------------+		*/

-- [25] QUARTER()

	-- This function returns the quarter from a date argument.
	SELECT QUARTER('2024-05-01');

/*
+-----------------------+
| QUARTER('2024-05-01') |
+-----------------------+
|                     2 |
+-----------------------+	*/

-- [26] SEC_TO_TIME()

	-- This function converts seconds to 'HH:MM:SS' format.
	SELECT SEC_TO_TIME(8600);

/*
+-------------------+
| SEC_TO_TIME(8600) |
+-------------------+
| 02:23:20          |
+-------------------+	*/

-- [27] SECOND()

	-- This function returns the second (0-59) from a time or datetime.
	SELECT SECOND('2024-05-01 10:30:45');
	SELECT SECOND(NOW());

/*
+-------------------------------+
| SECOND('2024-05-01 10:30:45') |
+-------------------------------+
|                            45 |
+-------------------------------+	*/

-- [28] STR_TO_DATE()

	-- This function converts a string to a date.
	SELECT STR_TO_DATE('01,05,2024', '%d,%m,%Y');

/*
+---------------------------------------+
| STR_TO_DATE('01,05,2024', '%d,%m,%Y') |
+---------------------------------------+
| 2024-05-01                            |
+---------------------------------------+	*/

-- [29] SUBTIME()

	-- This function subtracts a specified time interval from a time or datetime.
	SELECT SUBTIME('10:00:00', '02:30:00') AS SUB_TIME;

/*
+----------+
| SUB_TIME |
+----------+
| 07:30:00 |
+----------+	*/

-- [30] TIME_FORMAT()

	-- This function formats a time according to the specified format.
	SELECT TIME_FORMAT('10:30:00', '%h:%i %p');

/*
+-------------------------------------+
| TIME_FORMAT('10:30:00', '%h:%i %p') |
+-------------------------------------+
| 10:30 AM                            |
+-------------------------------------+		*/

-- [31] TIME_TO_SEC()

	-- This function returns the argument converted to seconds.
	SELECT TIME_TO_SEC('01:00:00');

/*
+-------------------------+
| TIME_TO_SEC('01:00:00') |
+-------------------------+
|                    3600 |
+-------------------------+		*/

-- [32] TIME()

	-- This function extracts the time portion of a time or datetime expression.
	SELECT TIME('2024-05-01 10:30:00');

/*
+-----------------------------+
| TIME('2024-05-01 10:30:00') |
+-----------------------------+
| 10:30:00                    |
+-----------------------------+		*/

-- [33] TIMEDIFF()

	-- This function subtracts two time values. (SAME AS SUBTIME)
	SELECT TIMEDIFF('10:00:00', '02:30:00');

/*
+----------------------------------+
| TIMEDIFF('10:00:00', '02:30:00') |
+----------------------------------+
| 07:30:00                         |
+----------------------------------+	*/

-- [34] TIMESTAMP()

	-- With a single argument, this function returns the date or datetime expression. With two arguments, it returns the sum of the arguments.
	SELECT TIMESTAMP('2024-05-01', '10:30:00');
	SELECT TIMESTAMP(NOW());

/*
+-------------------------------------+
| TIMESTAMP('2024-05-01', '10:30:00') |
+-------------------------------------+
| 2024-05-01 10:30:00                 |
+-------------------------------------+		*/

-- [35] TIMESTAMPADD()

	-- This function adds an interval to a datetime expression.
	SELECT TIMESTAMPADD(MINUTE, 20, '2024-05-01 10:30:00');
	SELECT TIMESTAMPADD(MINUTE, 20, NOW());

/*
+-------------------------------------------------+
| TIMESTAMPADD(MINUTE, 20, '2024-05-01 10:30:00') |
+-------------------------------------------------+
| 2024-05-01 10:50:00                             |
+-------------------------------------------------+		*/

-- [36] TIMESTAMPDIFF()

	-- This function subtracts an interval from a datetime expression.
	SELECT TIMESTAMPDIFF(MINUTE, '2024-05-01 10:30:00', '2024-05-01 11:00:00');

	-- Difference DAY wise
	SELECT TIMESTAMPDIFF(DAY, '2024-05-01 10:30:00', NOW());

	-- Difference HOUR wise
	SELECT TIMESTAMPDIFF(HOUR, '2024-05-01 10:30:00', NOW());

/*
+---------------------------------------------------------------------+
| TIMESTAMPDIFF(MINUTE, '2024-05-01 10:30:00', '2024-05-01 11:00:00') |
+---------------------------------------------------------------------+
|                                                                  30 |
+---------------------------------------------------------------------+

+--------------------------------------------------+
| TIMESTAMPDIFF(DAY, '2024-05-01 10:30:00', NOW()) |
+--------------------------------------------------+
|                                               19 |
+--------------------------------------------------+

+---------------------------------------------------+
| TIMESTAMPDIFF(HOUR, '2024-05-01 10:30:00', NOW()) |
+---------------------------------------------------+
|                                               459 |
+---------------------------------------------------+	*/

-- [37] TO_DAYS()

	-- This function returns the date argument converted to days.
	SELECT TO_DAYS(now());

/*
+----------------+
| TO_DAYS(now()) |
+----------------+
|         739391 |
+----------------+	*/

-- [38] UTC_DATE()

	-- This function returns the current UTC date.
	SELECT UTC_DATE();

/*
+------------+
| UTC_DATE() |
+------------+
| 2024-05-20 |
+------------+	*/

-- [39] UTC_TIME()

	-- This function returns the current UTC time.
	SELECT UTC_TIME();

/*
+------------+
| UTC_TIME() |
+------------+
| 08:43:09   |
+------------+		*/

-- [40] UTC_TIMESTAMP()

	-- This function returns the current UTC date and time.
	SELECT UTC_TIMESTAMP();

/*
+---------------------+
| UTC_TIMESTAMP()     |
+---------------------+
| 2024-05-20 08:43:42 |
+---------------------+		*/

-- [41] WEEK()

	-- This function returns the week number.
	SELECT WEEK('2024-05-01');
	SELECT WEEK(now());

/*
+--------------------+
| WEEK('2024-05-01') |
+--------------------+
|                 17 |
+--------------------+

+-------------+
| WEEK(now()) |
+-------------+
|          20 |
+-------------+		*/

-- [42] WEEKOFYEAR()

	-- This function returns the calendar week of the date (1-53).
	SELECT WEEKOFYEAR('2024-05-01');
	SELECT WEEKOFYEAR(now());

/*
+--------------------------+
| WEEKOFYEAR('2024-05-01') |
+--------------------------+
|                       18 |
+--------------------------+

+-------------------+
| WEEKOFYEAR(now()) |
+-------------------+
|                21 |
+-------------------+	*/

-- [43] YEARWEEK()

	-- This function returns the year and week.
	SELECT YEARWEEK('2024-05-01');
	SELECT YEARWEEK(now());

/*
+------------------------+
| YEARWEEK('2024-05-01') |
+------------------------+
|                 202417 |
+------------------------+

+-----------------+
| YEARWEEK(now()) |
+-----------------+
|          202420 |
+-----------------+		*/

-- [45] YEAR()

	-- This function returns the year from a date.
	SELECT YEAR('2024-05-01');
	SELECT YEAR(now());

/*
+--------------------+
| YEAR('2024-05-01') |
+--------------------+
|               2024 |
+--------------------+		*/

-- [46] TO_SECONDS()

	-- This function converts the date or datetime values into seconds.
	SELECT TO_SECONDS('2024-05-01 10:30:00');
	SELECT TO_SECONDS(now());

/*
+-----------------------------------+
| TO_SECONDS('2024-05-01 10:30:00') |
+-----------------------------------+
|                       63881778600 |
+-----------------------------------+

+-------------------+
| TO_SECONDS(now()) |
+-------------------+
|       63883434597 |
+-------------------+	*/

-- -----------------------------------------------------------------------------------------
									-- Date Formating Techniques
-- -----------------------------------------------------------------------------------------

-- [47] Basic Date Formatting

	-- Convert a date to the format YYYY-MM-DD (default format):  
	SELECT DATE_FORMAT('2024-05-01', '%Y-%m-%d');

/*
+---------------------------------------+
| DATE_FORMAT('2024-05-01', '%Y-%m-%d') |
+---------------------------------------+
| 2024-05-01                            |
+---------------------------------------+	*/

-- [48] Full Date with Weekday Name

	-- Convert a date to the format Weekday, Month Day, Year:
	SELECT DATE_FORMAT('2024-05-01', '%W, %M %d, %Y');

/*
+--------------------------------------------+
| DATE_FORMAT('2024-05-01', '%W, %M %d, %Y') |
+--------------------------------------------+
| Wednesday, May 01, 2024                    |
+--------------------------------------------+		*/

-- [49] Short Date Format

	-- Convert a date to the format MM/DD/YYYY:
	SELECT DATE_FORMAT('2024-05-01', '%m/%d/%Y');
	SELECT DATE_FORMAT(now(), '%m/%d/%Y');

/*
+---------------------------------------+
| DATE_FORMAT('2024-05-01', '%m/%d/%Y') |
+---------------------------------------+
| 05/01/2024                            |
+---------------------------------------+	*/

-- [50] Date and Time Format

	-- Convert a datetime to the format YYYY-MM-DD HH:MM:SS:
	SELECT DATE_FORMAT('2024-05-01 10:30:45', '%Y-%m-%d %H:%i:%s');

	-- Convert a datetime to the format DD-MM-YYYY HH:MM:SS:
	SELECT DATE_FORMAT('2024-05-01 10:30:45', '%d-%m-%Y %H:%i:%s');

/*
+---------------------------------------------------------+
| DATE_FORMAT('2024-05-01 10:30:45', '%Y-%m-%d %H:%i:%s') |
+---------------------------------------------------------+
| 2024-05-01 10:30:45                                     |
+---------------------------------------------------------+

+---------------------------------------------------------+
| DATE_FORMAT('2024-05-01 10:30:45', '%d-%m-%Y %H:%i:%s') |
+---------------------------------------------------------+
| 01-05-2024 10:30:45                                     |
+---------------------------------------------------------+		*/

-- [51] Time Only Format

	-- Convert a datetime to display only the time in HH:MM:SS AM/PM format:
	SELECT DATE_FORMAT('2024-05-01 10:30:45', '%r');
	SELECT DATE_FORMAT(now(), '%r');

/*
+------------------------------------------+
| DATE_FORMAT('2024-05-01 10:30:45', '%r') |
+------------------------------------------+
| 10:30:45 AM                              |
+------------------------------------------+

+--------------------------+
| DATE_FORMAT(now(), '%r') |
+--------------------------+
| 02:40:55 PM              |
+--------------------------+	*/

-- [52] Day of the Month and Month Name

	-- Convert a date to display the day of the month and month name:
	SELECT DATE_FORMAT('2024-05-01', '%d %M');
	SELECT DATE_FORMAT('2024-05-01', '%D %M');

/*
+------------------------------------+
| DATE_FORMAT('2024-05-01', '%d %M') |
+------------------------------------+
| 01 May                             |
+------------------------------------+

+------------------------------------+
| DATE_FORMAT('2024-05-01', '%D %M') |
+------------------------------------+
| 1st May                            |
+------------------------------------+	*/

-- [53] ISO 8601 Format

	-- Convert a date to ISO 8601 format YYYY-MM-DDTHH:MM:SS:
	SELECT DATE_FORMAT('2024-05-01 10:30:45', '%Y-%m-%dT%H:%i:%s');
	SELECT DATE_FORMAT(NOW(), '%Y-%m-%dT%H:%i:%s');

/*
+---------------------------------------------------------+
| DATE_FORMAT('2024-05-01 10:30:45', '%Y-%m-%dT%H:%i:%s') |
+---------------------------------------------------------+
| 2024-05-01T10:30:45                                     |
+---------------------------------------------------------+

+-----------------------------------------+
| DATE_FORMAT(NOW(), '%Y-%m-%dT%H:%i:%s') |
+-----------------------------------------+
| 2024-05-20T14:45:11                     |
+-----------------------------------------+		*/

-- ---------------------------------  NOTE : Date Format Specifiers  ------------------------------------
/*
									1.  %Y: Year (4 digits)
									2.  %y: Year (2 digits)
									3.  %M: Full month name
									4.  %m: Month (2 digits)
									5.  %d: Day of the month (2 digits)
									6.  %W: Full weekday name
									7.  %H: Hour (00-23)
									8.  %h: Hour (01-12)
									9.  %i: Minutes (00-59)
									10. %s: Seconds (00-59)
									11. %r: Time in 12-hour format (hh:mm:ss AM/PM)
									12. %T: Time in 24-hour format (hh:mm:ss)
									13. %u: Week number (00-53)
									14. %b: Abbreviated month name
									15. %a: Abbreviated weekday name
									16. %j: Day of the year (001-366)
									17. %f: Microseconds

*/

-- --------------------------------------- END --------------------------------------------
/*
### Summary

The chat covered various MySQL date and time functions with examples of how to use each one. Here is a brief summary of the discussed functions and their purposes:

1. **ADDDATE()**: Adds a specified time interval to a date.
2. **ADDTIME()**: Adds a specified time interval to a time or datetime.
3. **CONVERT_TZ()**: Converts a datetime value from one timezone to another.
4. **CURDATE()**: Returns the current date.
5. **CURRENT_DATE()**: Synonym for CURDATE().
6. **CURRENT_TIME()**: Synonym for CURTIME().
7. **CURRENT_TIMESTAMP()**: Synonym for NOW().
8. **CURTIME()**: Returns the current time.
9. **DATE_ADD()**: Adds a specified time interval to a date.
10. **DATE_FORMAT()**: Formats a date according to the specified format.
11. **DATE_SUB()**: Subtracts a specified time interval from a date.
12. **DATE()**: Extracts the date part of a datetime expression.
13. **DATEDIFF()**: Returns the number of days between two dates.
14. **DAY()**: Retrieves the day of the month from a given date.
15. **DAYNAME()**: Returns the name of the weekday.
16. **DAYOFMONTH()**: Returns the day of the month (1-31).
17. **DAYOFWEEK()**: Returns the weekday index of the argument (1=Sunday).
18. **DAYOFYEAR()**: Returns the day of the year (1-366).
19. **EXTRACT()**: Extracts part of a date.
20. **FROM_DAYS()**: Converts a day number to a date.
21. **FROM_UNIXTIME()**: Formats a Unix timestamp as a date.
22. **HOUR()**: Extracts the hour from a time or datetime.
23. **LAST_DAY()**: Returns the last day of the month for the argument.
24. **LOCALTIME()**: Synonym for NOW().
25. **LOCALTIMESTAMP()**: Synonym for NOW().
26. **MAKEDATE()**: Creates a date from the year and day of the year.
27. **MAKETIME()**: Creates a time value from given hours, minutes, and seconds.
28. **MICROSECOND()**: Returns the microseconds from a datetime or time expression.
29. **MINUTE()**: Returns the minute from a time or datetime.
30. **MONTH()**: Returns the month from a date.
31. **MONTHNAME()**: Returns the name of the month.
32. **NOW()**: Returns the current date and time.
33. **PERIOD_ADD()**: Adds a period to a year-month.
34. **PERIOD_DIFF()**: Returns the number of months between periods.
35. **QUARTER()**: Returns the quarter from a date argument.
36. **SEC_TO_TIME()**: Converts seconds to 'HH:MM:SS' format.
37. **SECOND()**: Returns the second (0-59) from a time or datetime.
38. **STR_TO_DATE()**: Converts a string to a date.
39. **SUBDATE()**: Subtracts a specified interval from a date.
40. **SUBTIME()**: Subtracts a specified time interval from a time or datetime.
41. **SYSDATE()**: Returns the time at which the function executes.
42. **TIME_FORMAT()**: Formats a time according to the specified format.
43. **TIME_TO_SEC()**: Converts a time value to seconds.
44. **TIME()**: Extracts the time portion of a datetime expression.
45. **TIMEDIFF()**: Subtracts two time values.
46. **TIMESTAMP()**: Returns a datetime expression; with two arguments, sums the arguments.
47. **TIMESTAMPADD()**: Adds an interval to a datetime expression.
48. **TIMESTAMPDIFF()**: Subtracts an interval from a datetime expression.
49. **TO_DAYS()**: Converts a date to the number of days since year 0.
50. **UNIX_TIMESTAMP()**: Returns a Unix timestamp.
51. **UTC_DATE()**: Returns the current UTC date.
52. **UTC_TIME()**: Returns the current UTC time.
53. **UTC_TIMESTAMP()**: Returns the current UTC date and time.
54. **WEEK()**: Returns the week number; mode can be specified.
55. **WEEKDAY()**: Returns the weekday index (0=Monday).
56. **WEEKOFYEAR()**: Returns the calendar week of the date (1-53).
57. **YEAR()**: Returns the year from a date.
58. **YEARWEEK()**: Returns the year and week.
59. **TO_SECONDS()**: Converts date or datetime values to seconds.

### Most Commonly Used Date Functions in Data Engineering

In the context of data engineering, especially for data cleaning and data transformation tasks in data warehouses, the following date functions are most commonly used:

1. **DATE_FORMAT()**: To format dates into the desired string format for reporting and data export.
2. **DATE_ADD()** and **DATE_SUB()**: To manipulate dates by adding or subtracting intervals.
3. **DATEDIFF()**: To calculate the difference in days between two dates.
4. **STR_TO_DATE()**: To convert string representations of dates into MySQL date objects.
5. **EXTRACT()**: To extract specific parts (e.g., year, month, day) from date values for aggregation or filtering.
6. **CURDATE()** and **NOW()**: To get the current date and current datetime, respectively, often used in ETL (Extract, Transform, Load) processes.
7. **TIMESTAMPDIFF()** and **TIMESTAMPADD()**: To perform date and time arithmetic, crucial for time series analysis.
8. **UNIX_TIMESTAMP()** and **FROM_UNIXTIME()**: For converting between Unix timestamps and MySQL date/datetime formats, especially in log processing.
9. **YEAR()**, **MONTH()**, **DAY()**, **HOUR()**, **MINUTE()**, **SECOND()**: To extract specific date/time components for analysis and transformations.
10. **WEEK()** and **WEEKOFYEAR()**: To determine week numbers, often used in weekly aggregation and reporting.
*/
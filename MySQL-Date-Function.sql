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
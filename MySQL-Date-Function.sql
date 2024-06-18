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
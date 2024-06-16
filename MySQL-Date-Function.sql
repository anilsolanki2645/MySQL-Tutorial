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
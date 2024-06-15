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


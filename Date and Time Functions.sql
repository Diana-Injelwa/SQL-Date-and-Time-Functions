/* CURRENT_DATE() - returns the current date */
SELECT CURRENT_DATE() AS todays_date;

/* CURRENT_TIME() - returns the current time */
SELECT CURRENT_TIME() AS time;

/* CURRENT_TIMESTAMP() - returns the current timestamp
i.e. combination of date and time */
SELECT CURRENT_TIMESTAMP() AS todays_date_time;

/* TIME() - extracts the time part from a datetime expression. 
   Extract the time from current timestamp '2024-02-27 12:44:57' 
   returns the 'hour, minutes and seconds' */
SELECT TIME(CURRENT_TIMESTAMP()) AS time;

/* DATE() - extracts the date part from a datetime expression.
   Extract the date from current timestamp '2024-02-27 12:44:57'
   returns the 'year, month and day' */
SELECT DATE(CURRENT_TIMESTAMP()) AS date;

/* YEAR() - extracts the year from date/datetime expression.
   Extract the year from current timestamp '2024-02-27 12:44:57' */
SELECT YEAR(CURRENT_TIMESTAMP()) AS year;

/* MONTH() - extracts the month frome date/datetime expression.
   Extract the month from current timestamp '2024-02-27 12:44:57' */
SELECT MONTH(CURRENT_TIMESTAMP()) AS month;

/* DAY() - extracts the day from date/datetime expression.
   Extract the day from the current timestamp '2024-02-27 12:44:57' */
SELECT DAY(CURRENT_TIMESTAMP()) AS day;

/* HOUR() - extracts the hour from time/datetime expression.
   Extract the hour from current timestamp '2024-02-27 12:44:57' */
SELECT HOUR(CURRENT_TIMESTAMP()) AS hour;

/* MINUTE() -extracts the minute frome time/datetime expression.
   Extract the minute from current timestamp '2024-02-27 12:44:57' */
SELECT MINUTE(CURRENT_TIMESTAMP()) AS minutes;

/* EXTRACT() - this function extracts a specific component (i.e. year, month, day, hour etc)
   from a date, time or timestamp. */
SELECT EXTRACT(DAY FROM CURRENT_TIMESTAMP()) AS day;

/* DATEDIFF() - calculates the difference between two dates/timestamps.
   Note: date! should be greater than date2
   This functions returns the difference in days */
SELECT DATEDIFF('2024-02-27', '2021-09-24') AS date_diff;

-- Return the difference between two dates in years
SELECT TIMESTAMPDIFF(YEAR, '2021-09-24', '2024-02-27') AS years;

-- Return the difference between two dates in months
SELECT TIMESTAMPDIFF(MONTH, '2021-09-24', '2024-02-27') AS months;

-- Return the difference between two dates in days
SELECT TIMESTAMPDIFF(DAY, '2021-09-24', '2024-02-27') AS days

/* TIMEDIFF() - calculates the difference between two times/timestamps
   Note: time1 should be greater than time2 */
SELECT TIMEDIFF('12:44:57', '12:00:57') AS time_diff;

/* DATE_ADD() - adds time/date interval to a date/timestamp */
SELECT DATE_ADD(CURRENT_DATE(), INTERVAL 7 DAY) AS next_week_tuesday;

/* DATE_SUB() - subtracts a time or date interval from a date/timestamp */
SELECT DATE_SUB(CURRENT_DATE(), INTERVAL 7 DAY) AS last_week_tuesday;

/* DATE_FORMAT() - displays date/datetime in different formats 
Display current date as '27th Feb 2024' */
SELECT DATE_FORMAT(CURRENT_DATE(), '%D %b %Y') AS today;
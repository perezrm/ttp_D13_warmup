/*
For today’s warmup look over date time functions you learned this week, and start a blog post,
explaining to an audience of non-sql/new-to-sql users what these functions do, how they work, with an
example (or two) of how to use them.
Some or all of the following:
1- EXTRACT
2- DATE ()
3- INTERVAL ()
4- AGE ()
5- NOW()
6- date_trunc
7- to_timestamp
8- to_char
*/

/* 1
The PostgreSQL EXTRACT() function retrieves a field such as year, month, day, etc., from a date / time value.
syntax:
EXTRACT(field FROM source)
*/
SELECT EXTRACT(YEAR FROM TIMESTAMP '2016-12-31 13:30:15');
/* RESULT: 2016 */


/* 2
The DATE() function extracts the date part from a datetime expression.
syntax:
DATE(expression)
*/
SELECT DATE("2017-06-15"); 
/* RESULT: 2017-06-15 */

/* 3
INTERVAL() function returns the index of the argument that is more than the first argument.
syntax:
INTERVAL(N,N1,N2,N3,...)
*/
SELECT INTERVAL(85, 1, 75, 17, 30,56, 175);
/* RESULT: 5 */


/* 4
AGE () to calculate ages in business applications e.g., ages of people, years of services of employees, etc.
syntax:
age(timestamp,timestamp);
*/
SELECT age('2017-01-01','2011-06-24');
/*
RESULT:
 		age
-----------------------
 5 years 6 mons 7 days
(1 row)
*/


/* 5
PostgreSQL NOW() function to get the date and time with time zone

*/
SELECT NOW();

 
/* 6
date_trunc
syntax:
DATE_TRUNC('datepart', field)
The datepart argument is the level of precision used to truncate the field, which can be one of the following:

    millennium
    century
    decade
    year
    quarter
    month
    week
    day
    hour
    minute
    second
    milliseconds
    microseconds
*/
SELECT DATE_TRUNC('hour', TIMESTAMP '2017-03-17 02:09:30');
/*
date_trunc
---------------------
 2017-03-17 02:00:00
(1 row)
*/


/* 7
The PostgreSQL TO_TIMESTAMP() function converts a string to a timestamp according to the specified format.
syntax:
TO_TIMESTAMP(timestamp, format)
*/
SELECT TO_TIMESTAMP('2017-03-31 9:30:20','YYYY-MM-DD HH:MI:SS');
/*
to_timestamp
------------------------
 2017-03-31 09:30:20-07
(1 row)
/*


/* 8
The PostgreSQL TO_CHAR() function converts a timestamp,
an interval, an integer, a double precision, or a numeric value to a string.
syntax:
TO_CHAR(expression, format)
*/
SELECT
    payment_date,
    TO_CHAR(
        payment_date,
        'HH12:MI:SS'
    ) payment_time
FROM
    payment
ORDER BY
    payment_date;
























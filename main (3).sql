/*Q-1. Write an SQL query to print the FIRST_NAME from Worker table after removing
white spaces from the right side.
Q-2. Write an SQL query that fetches the unique values of DEPARTMENT from Worker
table and prints its length.
Q-3. Write an SQL query to fetch nth max salaries from a table.*/

SELECT TRIM(first_name) 
FROM Worker

SELECT DISTINCT department , LENGTH(department)
FROM worker

Select salary
FROM worker
WHERE salary =( SELECT salary 
                FROM table_name
                ORDER BY salary DESC limit n-1,1);


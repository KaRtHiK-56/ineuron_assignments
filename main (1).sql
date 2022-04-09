/*Q-1. Write an SQL query to fetch “FIRST_NAME” from Worker table using the alias
name as &lt;WORKER_NAME&gt;.*/

SELECT FIRST_NAME AS WORKER_NAME
FROM worker

/*Q-2. Write an SQL query to fetch unique values of DEPARTMENT from Worker table.*/

SELECT DISTINCT DEPARTMENT
FROM worker

/*Q-3. Write an SQL query to show the last 5 record from a table.*/
SELECT *
FROM worker
ORDER BY ID DESC 
LIMIT 5
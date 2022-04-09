/*Q-1. Write an SQL query to print the FIRST_NAME from Worker table after replacing ‘a’
with ‘A’.
Q-2. Write an SQL query to print all Worker details from the Worker table order by
FIRST_NAME Ascending and DEPARTMENT Descending.
Q-3. Write an SQL query to fetch the names of workers who earn the highest salary.*/

SELECT REPLACE(FIRST_NAME,'a','A')
FROM worker

SELECT *
FROM worker
ORDER BY FIRST_NAME asc , DEPARTMENT desc

SELECT FIRST_NAME,salary
FROM worker
WHERE salary=(SELECT MAX(salary)
              FROM worker)

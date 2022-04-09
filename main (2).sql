/*Q-1. Write an SQL query to print the first three characters of FIRST_NAME from Worker
table.
Q-2. Write an SQL query to find the position of the alphabet (‘a’) in the first name
column ‘Amitabh’ from Worker table.
Q-3. Write an SQL query to print the name of employees having the highest salary in each
department.*/

SELECT SUBSTRING(first_name,1,3) 
FROM employees;

SELECT CHARINDEX('a', 'Amitabh') as Position

SELECT DEPT_ID, MAX(SALARY) FROM department GROUP BY DEPT_ID;

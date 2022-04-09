/*Q-1. Write an SQL query to print details of workers excluding first names, “Vipul” and
“Satish” from Worker table.
Q-2. Write an SQL query to print details of the Workers whose FIRST_NAME ends with
‘h’ and contains six alphabets.
Q-3. Write a query to validate Email of Employee.*/

SELECT *
FROM Workers
WHERE FIRST_NAME NOT IN ("Vipul","Satish")

SELECT FIRST_NAME
FROM Workers
WHERE FIRST_NAME LIKE '_____h'

SELECT * 
FROM Workers
WHERE Email LIKE '%@gmail.com';
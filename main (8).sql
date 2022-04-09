/*Q-15. Write an SQL query to fetch intersecting records of two tables.
Q-16. Write an SQL query to show records from one table that another table does not
have.*/

SELECT *
FROM worker1
intersect
SELECT *
FROM worker2

SELECT *
FROM worker1
where first_name not in (SELECT first_name FROM worker2)


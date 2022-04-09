/*Q-13. Write an SQL query to show only odd rows from a table.
Q-14. Write an SQL query to clone a new table from another table.*/

SELECT *
FROM
(
SELECT *, ROW_NUMBER() OVER(ORDER BY (select 1)) AS rownumber
FROM worker
)
worker
WHERE worker.RowNumber % 2 == 1;

CREATE TABLE clone_table SELECT * FROM another_table
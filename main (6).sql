/*Q-1. Write an SQL query to print details of the Workers who have joined in Feb’2014.
Q-2. Write an SQL query to fetch duplicate records having matching data in some fields of
a table.
Q-3. How to remove duplicate rows from Employees table.*/

SELECT *
FROM Workers
WHERE date BETWEEN '2014-02-01' AND '2014-02-28'

select first_name ,current_location, count(*) as cnt
from worker
group by first_name, current_location
having count(*)>1;

with employeeCTE as 
(
	select *, ROW_NUMBER() over(partition by first_name order by first_name) as rownumber
	from workers
)

delete from employeeCTE where rownumber > 1
select * from workers

/*Q-19. Write an SQL query to determine the 5th highest salary without using TOP or limit
method.
Q-20. Write an SQL query to fetch the list of employees with the same salary.*/

SELECT first_name, last_name, dept_name,current_salary
FROM (
    SELECT first_name, last_name,dept_name, current_salary, ROW_NUMBER() over( order by current_salary desc) as highest_salary
    FROM worker
	) worker
WHERE highest_salary <= 5

select *
from worker
where current_salary in (select current_salary from worker group by current_salary having count(1)>1)
order by current_salary;


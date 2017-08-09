use codeup_test_db;

select distinct *
from titles
group by title
order by title;

select *
from employees
where last_name like "e%"
	and last_name like "%e"
	group by last_name
	order by emp_no desc; 

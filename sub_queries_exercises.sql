select concat(first_name," ",last_name)
from employees
where hire_date = (
	select hire_date from employees where emp_no = 101010 
);

select title
from titles 
where emp_no in (
	select emp_no from employees where first_name = "aamod"
);

select concat(first_name," ",last_name)
from employees
where emp_no in (
	select emp_no from dept_manager where gender = "F" and to_date > now()
);

select dept_name
from departments
where dept_no in 
(
	select dept_no from dept_manager where emp_no in 
	(
		select emp_no from employees where gender = "F" and to_date > now()
	)
);

select birth_date, count(birth_date)
from employees
group by birth_date
order by count(birth_date) desc
limit 1;



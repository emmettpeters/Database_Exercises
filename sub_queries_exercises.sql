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



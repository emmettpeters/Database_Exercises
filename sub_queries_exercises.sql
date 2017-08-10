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

select avg(salary)
from salaries
join dept_emp on dept_emp.emp_no = salaries.emp_no
group by dept_no;

select count(*) , dept_name
from employees
join dept_emp on dept_emp.emp_no = employees.emp_no
join departments d on d.dept_no = dept_emp.dept_no
group by dept_name;

select avg(salary), dept_name
from salaries
join employees e on e.emp_no = salaries.emp_no
join dept_emp on dept_emp.emp_no = e.emp_no
join departments dp on dp.dept_no = dept_emp.dept_no
group by dept_emp.dept_no;

-- what was the average salary in the 80s? By department?

select avg(salary), dept_name
from salaries
join employees e on e.emp_no = salaries.emp_no
join dept_emp on dept_emp.emp_no = e.emp_no
join departments dp on dp.dept_no = dept_emp.dept_no
where salaries.to_date < "1990-01-01"
group by dept_emp.dept_no;




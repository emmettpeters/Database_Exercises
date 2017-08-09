USE employees;

/* select * from employees where first_name in ("irena","vidya","maya"); */

select count(*), gender 
from employees
where (first_name = "irena"
	or first_name = "vidya"
	or first_name = "maya")
	group by gender
	order by last_name,first_name;
	

/* select * from employees where last_name like "E%"; */

select concat(first_name," ",last_name)
from employees
where last_name like "e%"
	or last_name like "%e"
	order by emp_no desc;
	
/* select *
from employees
where last_name like "e%"
	and last_name like "%e"
	order by emp_no desc; */

/* select * from employees where hire_date like "199%"; 
*/

/* select * from employees where birth_date like "%-12-25"; */

select datediff(hire_date,now())
from employees
where (hire_date like "199%"
	and birth_date like "%-12-25")
	order by birth_date, hire_date desc;

/* select * from employees where last_name like "%q%"; */

select *, count(*)
from employees
where last_name like "%q%"
	and last_name not like "%qu%"
	group by first_name,last_name
	order by first_name;
	
	/* select count(*) as "number of employees by gender",gender
	from employees
	group by gender;
	 */
	
	

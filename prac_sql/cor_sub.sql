select *
from employees;
select *
from departments;

select *
from employees e
where salary > (select avg(salary)
				from employees e1
				where e.dept_id = e1.dept_id);

select *
from employees e
where salary = (select max(salary)
				from employees e1
				where e.dept_id = e1.dept_id);


select *
from employees e
where 1 = (select count(*)
			from employees e1
			where e.dept_id = e1.dept_id)

select *
from employees;

select *
from employees e
where salary<(select salary
				from employees e1
				where e.manager_id = e1.emp_id)

select *
from employees e
join employees m


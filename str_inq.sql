select * from employees;
select emp_id,concat_ws('-',fname,lname) from employees;

select emp_id,concat(fname,' ',lname,' ',salary),dept from employees;

select emp_id,substr(fname,2,5) from employees;

select fname,substr(lname,1,3),sum(salary) from employees
group by fname,lname;

select dept,fname,lname from employees
group by dept,fname,lname
order by dept desc;

select replace(dept,'IT','Tech') from employees;

select upper(fname) from employees;

select left(fname,2),right(fname,2) from employees;

select concat_ws(':',emp_id,fname,lname,dept)
from employees;

select concat_ws(':',emp_id,concat_ws(' ',fname,lname),dept,salary)
from employees
where emp_id = 1;

select concat_ws(':',emp_id,fname,upper(dept))
from employees;

select concat(left(dept,1),emp_id,fname) as task4 from employees
where emp_id=1;

select distinct(dept) from employees;

select * from employees
where fname like('_m%');

select * from employees
where length(fname)>5;

select count(emp_id) from employees;

select dept,count(emp_id) from employees
group by dept;

select dept,min(salary) from employees
group by dept;

select emp_id ,fname,lname,salary from employees
where salary = (select min(salary) from employees);
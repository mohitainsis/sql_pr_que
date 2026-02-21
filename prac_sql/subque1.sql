select* from children;
select * from parents;

select c.child_name,p.parent_name
from children c
left join parents p on c.parent_id = p.parent_id;

update parents
set parent_id = upper(parent_id);

----substrings
select * from employees;
select * from departments;

select *
from departments 
where dept_name in (select distinct dept_name from employees);

  

select * from staff;
delete from staff where staff_id >='STF2004';
alter table staff
drop column school_id;
alter table staff
add constraint staff_id_const check(staff_id<=3);

--case
select * from employees;

select emp_id,fname,salary,
case when salary >=50000 then 'high'
when salary>=40000 and salary<=50000 then 'mid'
else 'low' end as sal_cat from employees;

--question 1
select fname,salary,
case when salary>0 then salary*0.10 
end as bonus from employees;
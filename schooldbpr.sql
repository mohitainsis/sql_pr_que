select * from students;
select * from subjects;
select * from staff;
select * from staff_salary;
select * from subjects where subject_name = 'Mathematics';
select * from subjects where subject_name in ('Mathematics','Science','English');
select * from staff_salary where salary between 10000 and 15000;
select * from subjects where subject_name like 'S%';
select * from staff where age >50 or gender = 'F';

---case statement
select staff_id,salary,case when salary>15000 then 'too high'
when salary>10000 and salary < 15000 then 'medium'
when salary<10000 then 'too low'
end as sal_type from staff_salary
order by salary asc;
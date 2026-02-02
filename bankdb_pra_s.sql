create table employees (
emp_id serial primary key,
fname varchar(50) not null,
lname varchar(50) not null,
email varchar (50) not null unique,
dept varchar(50),
salary int default 30000 not null,
hire_date date not null
);

insert into employees (fname,lname,email,dept,hire_date)
values('sohan','kumar','sohan@gmail.com','it','1-1-2025');

alter table employees
alter column salary type decimal(10,2);

alter table employees
alter column salary set not null;

truncate table employees  restart identity;

insert into employees (fname, lname, email, dept, salary, hire_date) values
('Sohan', 'Kumar', 'sohan.kumar@gmail.com', 'IT', 45000.00, '2023-01-15'),
('Riya', 'Sharma', 'riya.sharma@gmail.com', 'HR', 38000.50, '2022-06-10'),
('Amit', 'Verma', 'amit.verma@gmail.com', 'Finance', 52000.75, '2021-09-01'),
('Neha', 'Singh', 'neha.singh@gmail.com', 'Marketing', 41000.00, '2023-03-20'),
('bittu', 'Mehta', 'bittu.mehta@gmail.com', 'IT', 60000.00, '2020-11-05'),
('Pooja', 'Nair', 'pooja.nair@gmail.com', 'Operations', 35000.00, '2024-02-01');
insert into employees (fname, lname, email, dept, salary, hire_date) values
('Raj',   'Sharma', 'raj.sharma@example.com',   'IT',        50000.00, '2020-01-15'),
('Priya', 'Singh',  'priya.singh@example.com',  'HR',        45000.00, '2019-03-22'),
('Arjun', 'Verma',  'arjun.verma@example.com',  'IT',        55000.00, '2021-06-01'),
('Suman', 'Patel',  'suman.patel@example.com',  'Finance',   60000.00, '2018-07-30'),
('Kavita','Rao',    'kavita.rao@example.com',   'HR',        47000.00, '2020-11-10'),
('Amit',  'Gupta',  'amit.gupta@example.com',   'Marketing', 52000.00, '2020-09-25'),
('Neha',  'Desai',  'neha.desai@example.com',   'IT',        48000.00, '2019-05-18'),
('Rahul', 'Kumar',  'rahul.kumar@example.com',  'IT',        53000.00, '2021-02-14'),
('Anjali','Mehta',  'anjali.mehta@example.com', 'Finance',   61000.00, '2018-12-03'),
('Vijay', 'Nair',   'vijay.nair@example.com',   'Marketing', 50000.00, '2020-04-19');

select * from employees;

alter table employees
alter column hire_date set default current_date;

select * from employees
where dept = 'IT' or dept = 'Finance';

select * from employees 
where salary>=50000 and dept = 'IT';

select * from employees
where dept in ('IT','Finance');

select distinct * from employees;

select distinct on (dept) * 
from employees
order by dept,hire_date desc;

select * from employees
where fname like 'A%';

select * from employees
where fname like '_a%';

select * from employees
where dept like '__';

select dept,count(emp_id) from employees
group by dept;

select * from employees;

select dept,sum(salary) from employees
group by dept;

SELECT SUM(salary) AS total_salary
FROM employees;

select count(*) from employees;

--department wise avg salary

select dept,avg(salary) as Average_salary from employees
group by dept;



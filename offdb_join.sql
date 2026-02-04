select * from departments;
select * from employees;
select * from managers;
select * from projects;

create table departments(
dept_id int primary key,
dept_name varchar(50)
);
insert into departments values 
(1,'HR'),
(2,'IT'),
(3,'Finance'),
(4,'Marketing');

create table employees(
emp_id int primary key,
emp_name varchar(50),
dept_id int,
salary int,
manager_id int
);
insert into employees values
(101,'Rahul',2,60000,201),
(102,'Anita',1,45000,202),
(103,'Mohit',2,55000,201),
(104,'Sneha',3,70000,Null),
(105,'Aman',Null,40000,202);

CREATE TABLE managers (
    manager_id INT PRIMARY KEY,
    manager_name VARCHAR(50)
);
INSERT INTO managers VALUES
(201, 'Vikram'),
(202, 'Neha');

CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(50),
    dept_id INT
);
INSERT INTO projects VALUES
(1001, 'Website Revamp', 2),
(1002, 'Payroll System', 3),
(1003, 'Recruitment Drive', 1);

-------employee names with the department they belong to 

select * from employees;
select * from departments;

select e.emp_name,d.dept_name
from employees e 
join departments d on e.dept_id = d.dept_id;

------------








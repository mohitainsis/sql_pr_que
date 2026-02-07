--total tables(6)
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
select * from managers;
select * from projects;

select e.emp_name,d.dept_name
from employees e 
join departments d on e.dept_id = d.dept_id;

------------
select e.emp_name,d.dept_name,m.manager_name
from employees e
left join departments d on e.dept_id = d.dept_id
left join managers m on m.manager_id = e.manager_id;
----------------

select d.dept_name,p.project_name
from departments d
join projects p on d.dept_id = p.dept_id;
------------------

select e.emp_name,d.dept_name,m.manager_name,p.project_name
from employees e
left join departments d on e.dept_id = d.dept_id
left join  managers m on e.manager_id = m.manager_id
left join projects p on d.dept_id = p.dept_id;
----employee who dont belong to any department but still have manager

select e.emp_name,d.dept_name,m.manager_name
from employees e
left join departments d on e.dept_id = d.dept_id
join managers m on e.manager_id = m.manager_id
where d.dept_id is null;
------cross join

select e.emp_name,p.project_name
from employees e
cross join projects p;
--------

create table parents(
parent_id varchar(10),
parent_name varchar(50),
parent_age int
);
insert into parents values
('f4','johnson',36),
('f5','maryam',40),
('f6','stewart',70);

select * from parents;

create table children(
child_id varchar(10),
child_name varchar(20),
child_age int,
parent_id varchar(10)
);
insert into children values
('F1', 'David', 4,  'F5'),
('F2', 'Carol', 10, 'F5'),
('F3', 'Michael', 12, 'F5'),
('F7', 'Rohan', 6,  'F4'),
('F8', 'Asha', 8,  'F4');

select  * from children;

select c.child_name,p.parent_name
from children c
join parents p on c.parent_id = p.parent_id;

SELECT
    c.child_name,
    p.parent_name
FROM children c
INNER JOIN parents p
ON c.parent_id = p.parent_id;


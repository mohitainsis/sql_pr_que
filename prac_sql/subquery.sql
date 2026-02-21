create table employees (
emp_id varchar(5),
emp_name varchar(20)
dept_id varchar(5),
salary int,
);

alter table employees
add constraint emp_pk primary key(emp_id);

alter table employees
add constraint sal_check check(salary>0);

select *
from employees;

INSERT INTO employees (emp_id, emp_name, dept_id, salary) VALUES
('E1', 'Rahul', 'D1', 15000),
('E2', 'Manoj', 'D1', 18000),
('E3', 'James', 'D2', 55000),
('E4', 'Neha',  'D3', 32000),
('E5', 'Sara',  NULL, 25000),
('E6', 'John',  'D10', 40000);

CREATE TABLE departments (
    dept_id   VARCHAR(5),
    dept_name VARCHAR(20)
);
INSERT INTO departments (dept_id, dept_name) VALUES
('D1', 'IT'),
('D2', 'HR'),
('D3', 'Finance'),
('D4', 'Admin');

select *
from departments;

select e.emp_name,d.dept_name
from employees e
join departments d on e.dept_id = d.dept_id;


select e.emp_name,d.dept_name
from employees e
left join departments d on e.dept_id = d.dept_id

select *
from employees;

select *
from managers;




CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name TEXT
);

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name TEXT,
    salary INT,
    dept_id INT,
    manager_id INT
);

select * from departments;
select * from employees;

INSERT INTO departments VALUES
(10, 'IT'),
(20, 'HR'),
(30, 'Sales');

INSERT INTO employees VALUES
(1, 'Alice', 60000, 10, NULL),
(2, 'Bob',   50000, 10, 1),
(3, 'Carol', 70000, 10, 1),
(4, 'David', 45000, 20, NULL),
(5, 'Eve',   55000, 20, 4),
(6, 'Frank', 40000, 30, NULL),
(7, 'Grace', 42000, 30, 6);


select emp_name
from employees
where salary> (select avg(salary)
from employees);

select *
from departments;

insert into departments valu
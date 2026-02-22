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

drop table if exists departments;

select *
from departments;
select *
from employees;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT,
    dept_id INT,
    manager_id INT,
    bonus INT
);
INSERT INTO employees VALUES
(1, 'Amit',   60000, 10, NULL, 5000),
(2, 'Neha',   75000, 20, 1,    NULL),
(3, 'Rohit',  50000, 10, 1,    3000),
(4, 'Mohan',  40000, 30, 2,    NULL),
(5, 'Sara',   90000, 20, 1,    7000),
(6, 'Kiran',  45000, 30, 2,    NULL),
(7, 'Vikas',  80000, 20, 1,    4000),
(8, 'Anjali', 30000, 40, 2,    NULL),
(9, 'Pooja',  35000, 40, 2,    NULL),
(10,'Raj',    65000, 10, 1,    2000);

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

INSERT INTO departments VALUES
(10, 'IT'),
(20, 'HR'),
(30, 'Sales'),
(40, 'Admin');

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    order_date DATE,
    amount INT
);

INSERT INTO orders VALUES
(101, 'Amit',  '2024-01-10', 5000),
(102, 'Neha',  '2024-02-15', 7000),
(103, 'Amit',  '2024-03-12', 6500),
(104, 'Sara',  '2024-01-05', 4000),
(105, 'Neha',  '2024-04-18', 9000),
(106, 'Amit',  '2024-05-01', 3000);

alter table employees
add constraint fk_dept
foreign key (dept_id) references departments(dept_id);


select * from employees;
select * from departments;
select * from orders;

select emp_name,emp_id,salary
from employees
where salary>(select avg(salary) 
			  from employees);

select emp_id,emp_name,salary
from employees 
where salary in (select max(salary)
				from employees);

select emp_id,emp_name,salary
from employees
where salary<(select max(salary)
				from employees);

select max(salary)
from employees
where salary <> (select max(salary)
				from employees);

--multi row subquery---
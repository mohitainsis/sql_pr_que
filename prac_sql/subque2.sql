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

select *
from employees;
select *
from departments;

select e.emp_id,e.emp_name,d.dept_id
from departments d
where dept_id in (select dept_id
from employees e
where emp_name = 'Mohan');

/*select *
from employees e
where dept_id = (select dept_name
					from departments d 
					where dept_id = e.dept_id);*/

select emp_id,emp_name,dept_id
from employees
where dept_id = (select dept_id 
				from employees
				where emp_name = 'Mohan');

select *
from employees;
select *
from departments;

--departments with more than 3 employees
select *
from employees
where dept_id in (select dept_id
from employees
group by dept_id
having count(*)>=3);

-------------
select emp_id,emp_name,salary
from employees
where salary in (select salary
from employees
where dept_id = (select dept_id
					from departments 

where dept_name = 'HR'));
select *
from employees;
select *
from departments;

select emp_id,emp_name,salary
from employees
where salary > All (select salary
from employees
where dept_id = (select dept_id
				from departments 
				where dept_name = 'HR'));

/*select emp_id,emp_name,salary,dept_id
from employees 
where salary > ANY (select avg(salary)
from employees e
join departments d on d.dept_id = e.dept_id
group by d.dept_id)*/

--correlated subquery

select emp_id,emp_name,salary,dept_id 
from employees e1
where salary> (select avg(salary)
				from employees e2
				where e1.dept_id = e2.dept_id)
order by dept_id asc;

select  emp_id,emp_name,salary,dept_id
from employees e1
where salary = (select max(salary)
				from employees e2
				where e1.dept_id = e2.dept_id)

select *
from employees;
select *
from departments;


select 
from departments d
where salary exists(select salary
		from employees e
		where )


select  *
from employees e
where exists (select 1
				from departments d 
				where d.dept_id = e.dept_id
				and d.city = 'Delhi')

select *
from departments d 
where exists(select 1
			from employees e 
			where d.dept_id = e.dept_id
			and salary>50000);

select *
from employees;
select *
from orders;

select *
from employees e1
where not exists (select bonus
					from employees e2
					where e1.emp_id = e2.emp_id
					and bonus is not null);

select order_id,customer_name,order_date,amount
from orders o1
where order_date in (select max(order_date)
						from orders o2
						where o1.customer_name = o2.customer_name
						group by customer_name);

select *
from employees;

select emp_id,emp_name,salary
from employees e1
where salary > any (select salary
				from employees e2
				where e1.emp_id = e2.manager_id);


select *
from departments d
where dept_id  (select max(salary),dept_id
from employees
group by dept_id
order by max(salary) desc);


select *
from employees;

select *
from departments d
where dept_id = (select dept_id
from (
	select dept_id , avg(salary) as avg_sal
	from employees e
	group by dept_id)
order by avg_sal desc
limit 1
);

select *
from employees
where dept_id in (
				select dept_id
				from employees 
				group by dept_id
				having count(*) = 1);

select *
from employees;

select max(avg_sal)
from (select dept_id,avg(salary) as avg_sal
from employees e
group by dept_id)













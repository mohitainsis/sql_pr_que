create table employees1(
emp_id int primary key,
name varchar(50),
dept varchar(50),
salary int
);

INSERT INTO employees1 (emp_id, name, dept, salary) VALUES
(1, 'A', 'IT', 50000),
(2, 'B', 'IT', 60000),
(3, 'C', 'HR', 40000),
(4, 'D', 'HR', 45000),
(5, 'E', 'Sales', 70000);

SELECT * FROM employees1;

--------------
with avg_sal as (
select avg(salary) as average_salary
from employees1
)
select name,salary
from employees1 e,avg_sal as avs
where e.salary>avs.average_salary;


-------------

with dept_avg as(
select dept,cast(avg(salary)as int) avg_salary
from employees1
group by dept
)
select *
from dept_avg
where avg_salary>50000;

-------------

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    amount INT
);
INSERT INTO orders (order_id, customer_id, amount) VALUES
(1, 101, 500),
(2, 102, 800),
(3, 101, 700),
(4, 103, 300);
SELECT * FROM orders;

-----------
with c_g as(
select customer_id , sum(amount) as total_amount
from orders
group by customer_id
)
select *
from c_g
where total_amount>1000;

------------

select * from employees1;

with cte as(
select dept,max(salary) as max_salary
from employees1
group by dept
)
select name,salary
from employees1 e
join cte c on e.dept = c.dept
and e.salary=c.max_salary
order by salary desc;

with cte as(
select dept,cast(avg(salary)as int) as avg_sal
from employees1
group by dept
)
select e.name,e.salary,e.dept
from employees1 e
join cte c on c.dept=e.dept
where c.avg_sal <e.salary;

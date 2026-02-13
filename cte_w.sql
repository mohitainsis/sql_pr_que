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


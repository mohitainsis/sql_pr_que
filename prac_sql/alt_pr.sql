select * from employees;
select * from subjects;

select * from subjects limit 3;
update subjects
set subject_name = 'hindi' where subject_id = 'SUBJ1002';

select subject_id,subject_name from subjects where subject_id = 'SUBJ1002';

create table person(
emp_id int primary key,
fname  varchar(100),
city  varchar(100),
age  int
);
insert into person values(1,'sohan','delhi',18);
insert into person values(2,'mohan','karnataka',20);
alter table person
drop column age;

alter table person
add column age int;
update person set age =18 where emp_id = 1;

delete from person where emp_id = 2;
select * from person;

alter table person
rename to persondb;
select * from persondb;

alter table persondb
rename to person;
alter table person
rename column fname to  first_name;
alter table person
add column mob_no int not null default '0';


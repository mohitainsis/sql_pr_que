create table customers(
cust_id serial primary key,
cust_name varchar(100) not null
);

create table orders(
order_id serial primary key,
ord_date date not null,
price numeric not null,
cust_id integer not null,
);
alter table orders
add constraint fk_cust_id
foreign key(cust_id)
references customers(cust_id);


select * from customer;
select * from orders;
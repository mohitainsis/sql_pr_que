CREATE TABLE order_details (
    order_details_id INT PRIMARY KEY,
    order_id INT,
    pizza_id TEXT,
    quantity INT
);

select *
from order_details;

create table orders(
order_id INT PRIMARY key,
order_date date,
order_time time
);

select * from orders;

CREATE TABLE pizza_types (
    pizza_type_id TEXT PRIMARY KEY,
    name TEXT,
    category TEXT,
    ingredients TEXT
);


CREATE TABLE pizzas (
    pizza_id TEXT PRIMARY KEY,
    pizza_type_id TEXT,
    size TEXT,
    price NUMERIC(5,2)
);

select *


select * from employee;
select * from album;
select * from aritst;
select * from customer;
select * from genre;
select * from invoice;
select * from invoice_line;
select * from media_type;
select * from playlist;
select * from playlist_track;
select * from track;


--most senior employee based on job title;

select employee_id,first_name,last_name,title
from employee 
where reports_to is null;

select first_name,last_name
from employee 
order by levels desc
limit 1;

--which country have the most invoices;

select count(billing_country) as co_count,billing_country
from invoice
group by billing_country
order by co_count desc
limit 3;

select sum(total) as total_invoice,billing_city
from invoice
group by billing_city
order by total_invoice desc
limit 1;



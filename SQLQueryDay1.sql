--data definition language (DDL)

create table amazon_orders
(
order_id integer,
order_date date,
product_name varchar(100),
total_price decimal(6,2),
payment_method varchar(20)
);

--delete a table 
--drop table amazon_orders;

--data Manipulation language (DML)
insert into amazon_orders values(1, '2022-10-01', 'Baby Milk', 38.5, 'UPI');
insert into amazon_orders values(2, '2022-10-02', 'Baby powder', 130, 'Credit card');

insert into amazon_orders values(3, '2022-10-01', 'Baby cream', 30.5, 'UPI');
insert into amazon_orders values(4, '2022-10-02', 'Baby soap', 138, 'Credit card');

--delete all rows from table
delete from amazon_orders;

--Data Querying Language
-- Querying Data
select * from amazon_orders;
select order_date, product_name from amazon_orders;
select product_name, order_date, total_price from amazon_orders;
select top 2 * from amazon_orders;


-- Order by data
select * from amazon_orders
order by order_date;

select * from amazon_orders
order by order_date asc;

-- latest order
select * from amazon_orders
order by order_date desc;

--data sorting
select * from amazon_orders
order by order_id desc;

select order_id,product_name from amazon_orders
order by order_id asc;

select order_id, product_name from amazon_orders
order by order_id desc;

--sort based on multiple column
select * from amazon_orders
order by order_id asc, total_price desc;

select * from amazon_orders;


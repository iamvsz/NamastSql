create table amazon_orders
(
order_id integer,
order_date date,
product_name varchar(100),
total_price decimal(6,2),
payment_method varchar(20)
);


select * from amazon_orders;

--change data type of a column

alter table amazon_orders alter column order_date datetime;
alter table amazon_orders alter column order_id date;
insert into amazon_orders values(5,'2025-11-06 12:05:12','shoes', 132, 'UPI');
insert into amazon_orders values(6,'2025-12-05 11:53:03', 'Sandal',534, 'credit card', 'vishal');
insert into amazon_orders  values(7, '2025-07-06 12:34:09', null,868, 'UPI','Shubham');
alter table amazon_orders alter column order_date date;

alter table amazon_orders alter column order_date varchar(20);
alter table amazon_orders alter column order_date datetime;

--invalid sql commands
alter table amazon_orders alter column product_name varchar(5);

--valid sql commands
alter table amazon_orders alter column product_name varchar(20); --no data truncated
alter table amazon_orders alter column product_name varchar(200);

--delete from table 
delete from amazon_orders where order_id = 5;

--add column to table
alter table amazon_orders add user_name varchar(20);
alter table amazon_orders add category varchar(20);

--drop column from table
alter table amazon_orders drop column category;


create table a_orders
(
order_id integer UNIQUE, --not null constraint and unique constraint
order_date date,
product_name varchar(100),
total_price decimal(6,2),
payment_method varchar(20) check (payment_method in ('UPI','CREDIT CARD')) default 'UPI', --check constraint
discount integer check(discount < = 20), --check constraint on integer
category varchar(20) default 'Mens Wear' --default constraint
primary key(order_id, product_name) 
);

--valid check constraint values
insert into a_orders values(1, '2025-09-07','shoes',139,'UPI', 16);
insert into a_orders values(1, '2024-09-27','Shirts',189,'UPI',18); --invalid as order_id should be unique
insert into a_orders values(2,'2024-08-09','Sandals',670,'Credit card',29); --invalid as discount is larger than 20

insert into a_orders(order_id,order_date,product_name,total_price,payment_method,discount)
values (1, '2023-09-23','Shirts',543,'UPI',20)

insert into a_orders(order_date, order_id, product_name, total_price, discount) 
values ('2023-07-23',1,'Headphones',899,12)

insert into a_orders(order_id, order_date, product_name, total_price,payment_method, discount, category)
values (1, '2023-09-12','Clock',433,default,12,default)

--primary key is unique constraint + not null constraint

insert into a_orders(order_id, order_date, product_name, total_price,payment_method, discount, category)
values (1, '2023-09-18','Clock',433,default,12,default)

--invalid check constraint values
insert into a_orders values(2, '2026-09-23','Biscuits',233,'Internet Banking')


select * from a_orders;
delete from a_orders;
alter table a_orders alter column order_date integer; --incompatible
alter table a_orders alter column product_name varchar(10);

select * from a_orders order by order_id desc;
drop table a_orders;
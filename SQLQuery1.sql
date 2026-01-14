select * from Orders;

create table hr.test
(
id integer,
name varchar(10)
)

insert into hr.test
values (1, 'Vishal')

select * from hr.test;

create table sales.test
(
id integer,
name varchar(10)
)

select * from sales.test;

insert into sales.test
select id, name from hr.test;
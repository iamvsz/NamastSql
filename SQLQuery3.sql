select * from orders;

select * from Orders 
order by Customer_Name;

select distinct ship_mode from Orders;

select top 5 order_id, order_Date 
from Orders;

select top 5 * 
from orders
order by order_date desc

select distinct ship_mode from Orders;
select * from orders;
select distinct segment from orders;
select distinct ship_mode, segment from orders;

--totally exact rows will not show, all distinct rows will you get
select distinct * from orders;

--filters
select * from orders
where ship_mode = 'First Class'

select * from orders
where order_date = '2020-12-08'

select order_date,quantity from orders
where quantity >= 5;

select order_date, quantity 
from orders
where quantity >=5
order by quantity;

select top 5 *
from orders
where quantity >=5 
order by quantity;

select top 5 *
from orders
where quantity >=5
order by quantity desc;

select top 5 order_date, quantity
from orders
where quantity >=5  -- quantity <=5, quantity != 5
order by quantity desc;

select * from orders
where order_date < '2020-11-08';

select * from orders
where order_date <= '2020-11-08'
order by order_date desc;

select * from orders
where order_date between '2020-11-08' and '2020-11-10'
order by order_date asc;

select * from orders
where quantity between 3 and 5
order by quantity asc;

select * from orders
where ship_mode in ('First Class', 'Same Day');

--using or operator
select * from orders
where ship_mode = 'First Class' or ship_mode = 'Same Day';

select distinct ship_mode from orders
where ship_mode in ('First Class', 'Same Day');

--using or operator
select distinct ship_mode from orders
where ship_mode = 'First Class' or ship_mode = 'Same Day';

select distinct ship_mode from orders
where ship_mode in ('First Class');

select * from orders
where quantity in (3,5)
order by quantity asc;

--using or operator
select * from orders
where quantity = 3 or quantity = 5
order by quantity asc;

select distinct ship_mode from orders
where ship_mode not in ('First Class', 'Same Day');

select distinct ship_mode from orders
where ship_mode >= 'Second Class';

select order_date, ship_mode, segment from orders
where ship_mode = 'First Class' or segment = 'Consumer';

select *, profit/sales as ratio, profit+sales as total
from orders

select *, profit/sales as ratio, profit+sales as total
from orders
where order_date between '2022-11-01 12:00:00' and '2022-11-01 12:40:00'
order by order_date; 


--pattern matching like operator

select order_id, order_date, customer_name
from orders
where customer_name like 'c%'

select order_id, order_date, customer_name
from orders
where customer_name like 'chris%'

select order_id, order_date, customer_name
from orders
where customer_name like '%t';

select order_id, order_date, customer_name
from orders
where customer_name like '%ven%';


select order_id, order_date, customer_name
from orders
where customer_name like 'a%a';

--case insensitive
select order_id, order_date, customer_name
from orders
where customer_name like 'A%A';


select * from orders where customer_name like '_a_d%';

select * from orders where order_date between '2020-12-01' and '2020-12-31';

select * from orders where ship_mode not in ('Standard Class', 'First Class')
and ship_date > '2020-11-30';

select * from orders where customer_name not like 'A%n';

select * from orders where profit < 0;

select * from orders where quantity < 3 or profit = 0;

select * from orders where region = 'South' and discount > 0;

select top 5 * from orders where category = 'Furniture'
order by sales desc;

select * from orders where category in ('Furniture','Technology')
and order_date between '2020-01-01' and '2020-12-31';

select * from orders where (category = 'Furniture' or category = 'Technology')
and (order_date between '2020-01-01' and '2020-12-31');

select * from orders where
order_date between '2020-01-01' and '2020-12-31' and ship_date between '2021-01-01' and '2021-12-31';



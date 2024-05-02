/* Query to join 2 tables black_friday sales and superstores_sales based on the sales ranking */

select product_id,gender,age,occupation,marital_status,
city_category,purchase,
order_id, order_date, ship_date, ship_mode,
customer_id,segment,city,product_name,sales,pur_rnk
from (
select product_id,gender,age,occupation,marital_status,
city_category,purchase, dense_rank() over(order by purchase asc) as pur_rnk
from 
(select * from blackfri_tbl limit 1000) ) as tbl1
left outer join
(select order_id, order_date, ship_date, ship_mode,
customer_id,segment,city,product_name,sales , dense_rank() over(order by sales asc) as sal_rnk
from 
(select * from superstore_sls_tbl limit 1000) ) as tbl2
on pur_rnk=sal_rnk


/* defining a CTE expression for statistics */

with temp_tbl as (select product_id,gender,age,occupation,marital_status,
city_category,purchase,
order_id, order_date, ship_date, ship_mode,
customer_id,segment,city,product_name,sales,pur_rnk
from (
select product_id,gender,age,occupation,marital_status,
city_category,purchase, dense_rank() over(order by purchase asc) as pur_rnk
from 
(select * from blackfri_tbl limit 1000) ) as tbl1
left outer join
(select order_id, order_date, ship_date, ship_mode,
customer_id,segment,city,product_name,sales , dense_rank() over(order by sales asc) as sal_rnk
from 
(select * from superstore_sls_tbl limit 1000) ) as tbl2
on pur_rnk=sal_rnk)

/* Query for showing min and max sales values*/
select distinct min(purchase) over(partition by gender,age,marital_status) as min_black_friday_val,
min(sales) over(partition by ship_mode,segment,city) as min_superstores_val,
max(purchase) over(partition by gender,age,marital_status) as max_black_friday_val,
max(sales) over(partition by ship_mode,segment,city) as max_superstores_val
from temp_tbl

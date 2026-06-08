# Write your MySQL query statement below
select prod.product_name,sale.year,sale.price from Sales as sale left join Product as prod on sale.product_id=prod.product_id;

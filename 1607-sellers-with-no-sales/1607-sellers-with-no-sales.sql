# Write your MySQL query statement below
select seller_name 
from seller 
where seller_name not in (select distinct s.seller_name 
                          from seller s,orders o 
                          where o.seller_id = s.seller_id 
                          and o.sale_date like '2020%' ) 
order by seller_name asc
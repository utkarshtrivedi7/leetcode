# Write your MySQL query statement below
select seller_name 
from Seller s
left join Orders o 
on s.seller_id = o.seller_id and left(sale_date, 4) = '2020'
where o.seller_id is null
order by seller_name  
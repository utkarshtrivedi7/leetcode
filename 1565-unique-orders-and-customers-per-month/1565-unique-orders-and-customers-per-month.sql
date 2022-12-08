# Write your MySQL query statement below
SELECT DATE_FORMAT(order_date, '%Y-%m') AS month, COUNT(DISTINCT order_id) AS order_count, COUNT(DISTINCT customer_id) AS customer_count
FROM Orders
where invoice > 20
group by 1;

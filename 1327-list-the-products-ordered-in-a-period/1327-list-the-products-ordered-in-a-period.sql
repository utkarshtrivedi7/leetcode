# Write your MySQL query statement below
SELECT p.product_name AS product_name, SUM(o.unit) AS unit
FROM Products AS p
JOIN Orders AS o
ON p.product_id = o.product_id 
WHERE LEFT(order_date, 7) = '2020-02'
GROUP BY p.product_name
HAVING SUM(o.unit) >= 100;
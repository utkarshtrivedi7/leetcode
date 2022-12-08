# Write your MySQL query statement below
SELECT c.customer_id, c.name
FROM Customers AS c
JOIN Orders AS o  ON o.customer_id = c.customer_id
JOIN Product AS p ON o.product_id = p.product_id
GROUP BY c.customer_id
HAVING  SUM(IF(MONTH(o.order_date) = 6, o.quantity, 0) * p.price) >= 100 AND 
        SUM(IF(MONTH(o.order_date) = 7, o.quantity, 0) * p.price) >= 100;
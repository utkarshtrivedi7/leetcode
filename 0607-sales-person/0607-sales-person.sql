# Write your MySQL query statement below
SELECT s.name
FROM salesPerson as s
WHERE s.sales_id NOT IN
    (
    SELECT o.sales_id 
    FROM orders
    JOIN orders as o
    ON o.sales_id = s.sales_id
    JOIN company as c
    ON o.com_id = c.com_id
    WHERE c.name = 'RED'
    )


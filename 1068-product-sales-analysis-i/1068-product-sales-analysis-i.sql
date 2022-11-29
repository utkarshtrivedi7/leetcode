# Write your MySQL query statement below
SELECT p.product_name, s.year, s.price 
FROM Product as p 
RIGHT JOIN 
    (
        SELECT DISTINCT product_id, year, price 
        FROM Sales
    ) as s 
ON p.product_id = s.product_id



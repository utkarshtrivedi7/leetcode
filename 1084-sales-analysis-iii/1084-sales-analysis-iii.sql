# Write your MySQL query statement below
SELECT product_id, product_name 
FROM Product 
WHERE product_id IN
    (
        SELECT s.product_id
        FROM Sales as s
        GROUP BY s.product_id
        HAVING MIN(sale_date) >= '2019-01-01' AND MAX(sale_date) <= '2019-03-31'
    )
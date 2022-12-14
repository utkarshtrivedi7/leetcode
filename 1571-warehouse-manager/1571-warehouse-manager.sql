# Write your MySQL query statement below
SELECT w.name AS warehouse_name, SUM(p.width * p.length * p.height * w.units) AS volume
FROM Warehouse AS w
JOIN Products AS p
ON p.product_id = w.product_id
GROUP BY w.name
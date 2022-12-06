# Write your MySQL query statement below
SELECT q.id, q.year, IFNULL(n.npv,0) AS npv
FROM NPV AS n
RIGHT JOIN Queries AS q
ON n.id = q.id AND n.year = q.year
ORDER BY q.id,q.year
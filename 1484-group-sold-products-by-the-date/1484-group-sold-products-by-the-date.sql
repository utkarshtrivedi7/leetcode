# Write your MySQL query statement below
SELECT  sell_date,(COUNT(sell_date )) AS num_sold ,
	GROUP_CONCAT(DISTINCT product  ORDER BY product) AS products 
FROM (SELECT DISTINCT sell_date,product FROM Activities) AS Activities
GROUP BY sell_date;
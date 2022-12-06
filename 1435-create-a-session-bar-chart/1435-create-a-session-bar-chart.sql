# Write your MySQL query statement below
SELECT '[0-5>' AS bin, SUM(CASE WHEN duration >= 0 AND duration < 300 THEN 1 ELSE 0 END) AS total FROM Sessions UNION 
SELECT '[5-10>' AS bin, SUM(CASE WHEN duration >= 300 AND duration < 600 THEN 1 ELSE 0 END) AS total FROM Sessions  UNION 
SELECT '[10-15>' AS bin, SUM(CASE WHEN duration >= 600 AND duration < 900 THEN 1 ELSE 0 END) AS total FROM Sessions UNION 
SELECT '15 or more' AS bin, SUM(CASE WHEN duration >= 900 THEN 1 ELSE 0 END) AS total 
FROM Sessions 
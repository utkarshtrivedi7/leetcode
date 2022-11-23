# Write your MySQL query statement below
SELECT class
FROM courses
GROUP BY class
HAVING count(student) >= 5 
ORDER BY class DESC

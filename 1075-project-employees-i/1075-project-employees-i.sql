# Write your MySQL query statement below
SELECT p.project_id, (ROUND((SUM(e.experience_years))/(COUNT(p.employee_id)),2)) as average_years
FROM Employee as e
RIGHT JOIN Project as p
ON p.employee_id = e.employee_id
GROUP BY p.project_id

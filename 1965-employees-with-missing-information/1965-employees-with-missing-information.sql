# Write your MySQL query statement below
SELECT e.employee_id 
FROM Employees e
WHERE e.employee_id NOT IN 
    (
        SELECT s.employee_id 
        FROM Salaries s 
        WHERE s.salary IS NOT NULL
    )
    
UNION

SELECT s.employee_id 
FROM Salaries s 
WHERE s.employee_id NOT IN 
    (
        SELECT e.employee_id 
        FROM Employees e 
        WHERE e.name IS NOT NULL
    )
ORDER BY 1 ASC
# Write your MySQL query statement below
SELECT s.id, s.name
FROM Students AS s
WHERE s.department_id NOT IN (
                                SELECT s.department_id
                                FROM Students AS s
                                INNER JOIN Departments AS d
                                ON d.id = s.department_id
                             )



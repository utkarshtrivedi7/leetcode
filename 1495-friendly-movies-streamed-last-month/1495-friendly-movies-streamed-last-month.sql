# Write your MySQL query statement below
SELECT DISTINCT c.title as TITLE
FROM Content AS c
JOIN TVProgram as t
ON t.content_id = c.content_id
WHERE t.program_date LIKE '2020-06%' AND c.Kids_content = 'Y' AND c.content_type = 'Movies';
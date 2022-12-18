# Write your MySQL query statement below
select a.student_name as member_A, b.student_name as member_B, c.student_name as member_C
FROM SchoolA as a, SchoolB as b, SchoolC as c
WHERE a.student_id != b.student_id AND a.student_id != c.student_id AND b.student_id != c.student_id
AND a.student_name != b.student_name AND a.student_name != c.student_name AND b.student_name != c.student_name
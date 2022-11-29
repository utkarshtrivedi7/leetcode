# Write your MySQL query statement below
SELECT name, bonus
FROM Bonus as b
RIGHT JOIN Employee as e
ON e.empId = b.empId
Where bonus < 1000 or bonus is NULL
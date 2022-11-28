# Write your MySQL query statement below
SELECT name as NAME, SUM(amount) as BALANCE
FROM Transactions as t
RIGHT JOIN Users as u
ON u.account = t.account
GROUP BY t.account
HAVING BALANCE > 10000

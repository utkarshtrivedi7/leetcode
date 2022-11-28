# Write your MySQL query statement below
SELECT v.customer_id, count(1) AS count_no_trans
FROM Visits as v
WHERE visit_id NOT IN 
    (
        SELECT visit_id
        FROM Transactions
    )
GROUP BY v.customer_id


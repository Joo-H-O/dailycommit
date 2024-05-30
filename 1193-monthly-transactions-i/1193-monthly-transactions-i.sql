# Write your MySQL query statement below
SELECT LEFT(trans_date, 7) AS month, 
    country, 
    COUNT(id) AS trans_count, 
    IFNULL(SUM(CASE WHEN state = 'approved' THEN 1 END), 0) AS approved_count, #Count only approval state, Null = 0
    SUM(amount) AS trans_total_amount,
    IFNULL(SUM(CASE WHEN state = 'approved' THEN amount END), 0) AS approved_total_amount #Sum only approval state, Null = 0
FROM Transactions
GROUP BY LEFT(trans_date, 7), country #for each month and country
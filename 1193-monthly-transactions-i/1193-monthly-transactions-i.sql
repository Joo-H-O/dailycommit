# Write your MySQL query statement below
SELECT DATE_FORMAT(trans_date, '%Y-%m') AS month, #Return Year-month
        country,
        COUNT(state) AS trans_count, #number of transactions
        COUNT(CASE WHEN state LIKE 'approved' THEN 1 END) AS approved_count, #number of approved transactions
        SUM(amount) AS trans_total_amount, #total amount
        IFNULL(SUM(CASE WHEN state LIKE 'approved' THEN amount END), 0) AS approved_total_amount #total amount
FROM Transactions
GROUP BY month, country #find for each month and country
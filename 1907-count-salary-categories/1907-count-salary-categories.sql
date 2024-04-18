# Write your MySQL query statement below
SELECT 'Low Salary' AS category,
    SUM(CASE WHEN income < 20000 THEN 1 ELSE 0 END) AS accounts_count #Return 1 for every Low Salary
FROM Accounts
UNION ALL
SELECT 'Average Salary' AS category,
    SUM(CASE WHEN income BETWEEN 20000 AND 50000 THEN 1 ELSE 0 END) AS accounts_count #Return 1 for every Avg Salary
FROM Accounts
UNION ALL
SELECT 'High Salary' AS category,
    SUM(CASE WHEN income > 50000 THEN 1 ELSE 0 END) AS accounts_count #Return 1 for every High Salary
FROM Accounts

# Write your MySQL query statement below
SELECT U.name,
        SUM(T.amount) AS balance
FROM Users U
JOIN Transactions T ON U.account = T.account #JOIN 2 TABLES
GROUP BY U.account #GROUP BY TO SUM(AMOUNT) FOR EACH ACCOUNT
HAVING SUM(T.amount) > 10000 #AMOUNT OVER THAN 10000 ONLY
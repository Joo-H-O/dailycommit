# Write your MySQL query statement below
SELECT S.user_id,
    IFNULL(ROUND(SUM(CASE WHEN C.action = 'confirmed' THEN 1 ELSE 0 END) / COUNT(*), 2), 0) AS confirmation_rate
FROM Signups S
LEFT JOIN Confirmations C ON S.user_id = C.user_id
GROUP BY user_id
# Write your MySQL query statement below
SELECT R.contest_id,
    ROUND(COUNT(U.user_id) / 
    (SELECT COUNT(DISTINCT user_id) FROM users) * 100, 2) AS percentage
    #Register수 대비 Subquery로 전체 user 수 구하여 나눔
FROM register R
JOIN users U ON R.user_id = U.user_id
GROUP BY R.contest_id
ORDER BY percentage DESC, R.contest_id #ORDER BY 조건 처리


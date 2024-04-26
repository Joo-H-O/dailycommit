# Write your MySQL query statement below
SELECT id, COUNT(*) AS num
FROM (
    SELECT requester_id AS id
    FROM RequestAccepted
    UNION ALL
    SELECT accepter_id AS id
    FROM RequestAccepted) Sub #UNION ALL ids to SUM in 1 column
GROUP BY id
ORDER BY num DESC #ORDER BY bigger number
LIMIT 1
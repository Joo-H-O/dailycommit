# Write your MySQL query statement below
SELECT person_name
FROM (
    SELECT *, SUM(weight) OVER(ORDER BY turn) AS weight_limit
    FROM Queue) sub
WHERE weight_limit BETWEEN 0 AND 1000
ORDER BY turn DESC
LIMIT 1
#Return person who has accumulate weight just under 1,000kg
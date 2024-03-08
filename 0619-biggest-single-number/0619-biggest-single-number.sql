# Write your MySQL query statement below
SELECT MAX(num) AS num #Return MAX number
FROM MyNumbers
WHERE num IN (
            SELECT num
            FROM MyNumbers
            GROUP BY num
            HAVING COUNT(*) = 1 #Return the single number in subquery
)

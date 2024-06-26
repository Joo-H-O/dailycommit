# Write your MySQL query statement below
SELECT 
    Score, 
    DENSE_RANK() OVER (ORDER BY Score DESC) AS 'rank'
FROM 
    Scores
ORDER BY 
    Score DESC
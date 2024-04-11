# Write your MySQL query statement below
SELECT U.name, IFNULL(SUM(distance), 0) AS travelled_distance #Return 0
FROM Users U
LEFT JOIN Rides R ON R.user_id = U.id
GROUP BY U.id
ORDER BY 2 DESC, 1
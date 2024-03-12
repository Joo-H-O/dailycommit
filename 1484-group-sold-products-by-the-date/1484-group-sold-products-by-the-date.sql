# Write your MySQL query statement below
SELECT sell_date,
        COUNT(DISTINCT product) AS num_sold, #COUNT num_sold, DISTINCT to remove double counts
        GROUP_CONCAT(DISTINCT product ORDER BY product SEPARATOR ',') AS products
        #ORDER product lexicographically and GROUP_CONCAT
FROM Activities
GROUP BY sell_date
ORDER BY sell_date #ORDER BY sell_date
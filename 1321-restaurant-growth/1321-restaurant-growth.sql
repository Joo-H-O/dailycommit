# Write your MySQL query statement below
SELECT visited_on, 
    amount, 
    ROUND((amount / 7), 2) AS average_amount #rounded to two decimal places
FROM (
    SELECT visited_on, 
        CASE 
            WHEN visited_on < DATE_ADD((SELECT MIN(visited_on) FROM Customer), INTERVAL 6 DAY) THEN NULL
            #Only SUM when rows exist enough (current day + 6 days before = MIN(date) + 6 days after)
            ELSE SUM(amount_per_date) OVER (ORDER BY visited_on ROWS BETWEEN 6 PRECEDING AND CURRENT ROW)
        END AS amount #Return SUM(amount) for each date
    FROM (
        SELECT *, SUM(amount) AS amount_per_date
        FROM Customer
        GROUP BY visited_on) Sub) Sub2
WHERE amount IS NOT NULL #Return result only from 2019-01-07
ORDER BY visited_on #ORDER BY condition
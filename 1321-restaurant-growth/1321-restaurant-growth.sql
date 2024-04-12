# Write your MySQL query statement below
SELECT visited_on, 
    amount, 
    ROUND((amount / 7), 2) AS average_amount #rounded to two decimal places
FROM (
    SELECT visited_on, 
        SUM(amount_per_date) OVER (ORDER BY visited_on ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS amount #Return SUM(amount) for each date
    FROM (
        SELECT *, SUM(amount) AS amount_per_date
        FROM Customer
        GROUP BY visited_on) Sub) Sub2
WHERE visited_on >= DATE_ADD((SELECT MIN(visited_on) FROM Customer), INTERVAL 6 DAY)
#Only SUM when rows exist enough (current day + 6 days before = MIN(date) + 6 days after)
ORDER BY visited_on #ORDER BY condition
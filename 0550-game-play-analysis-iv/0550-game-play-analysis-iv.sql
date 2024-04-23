# Write your MySQL query statement below
SELECT ROUND(COUNT(*) / (SELECT COUNT(DISTINCT player_id) FROM Activity), 2) AS fraction #Return the fraction
FROM (
    SELECT player_id, event_date, 
        LEAD(event_date) OVER (PARTITION BY player_id ORDER BY event_date) AS follow_event_date
    FROM (
        SELECT player_id, event_date,
            ROW_NUMBER() OVER (PARTITION BY player_id ORDER BY event_date) AS row_num
        FROM Activity) Sub
    WHERE row_num <=2) Sub2 #Return only the 1st login date & the following date
WHERE DATEDIFF(follow_event_date, event_date) = 1 #Return players that logged back in after the first day

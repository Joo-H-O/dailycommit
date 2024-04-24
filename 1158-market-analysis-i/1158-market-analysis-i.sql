# Write your MySQL query statement below
SELECT U.user_id AS buyer_id, U.join_date, 
    SUM(CASE WHEN YEAR(order_date) = 2019 THEN 1 ELSE 0 END) AS orders_in_2019 #number of orders in 2019
FROM Users U
LEFT JOIN Orders O ON O.buyer_id = U.user_id #To return all user_id
GROUP BY U.user_id
ORDER BY 1
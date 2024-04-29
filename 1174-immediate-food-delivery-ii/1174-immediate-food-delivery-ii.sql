# Write your MySQL query statement below
SELECT ROUND(COUNT(imm) / (SELECT COUNT(DISTINCT customer_id) FROM Delivery)*100, 2) AS immediate_percentage
FROM(
    SELECT customer_id AS imm
    FROM Delivery
    GROUP BY customer_id
    HAVING MIN(order_date) = MIN(customer_pref_delivery_date)) Imme
#Return immediate order ids
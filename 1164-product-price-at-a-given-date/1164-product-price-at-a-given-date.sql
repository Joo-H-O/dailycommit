# Write your MySQL query statement below
SELECT product_id,
    COALESCE(
        (SELECT new_price 
         FROM Products p 
         WHERE p.product_id = Products.product_id AND 
                p.change_date <= '2019-08-16' 
         ORDER BY p.change_date DESC 
         LIMIT 1), 10) AS price
FROM Products
GROUP BY product_id
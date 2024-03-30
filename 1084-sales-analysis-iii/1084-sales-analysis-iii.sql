# Write your MySQL query statement below
SELECT P.product_id, P.product_name
FROM Product P
WHERE P.product_id IN (
    SELECT product_id 
    FROM Sales
    WHERE sale_date BETWEEN '2019-01-01' AND '2019-03-31') #Return the product sold in this term
AND P.product_id NOT IN (
    SELECT product_id 
    FROM Sales
    WHERE sale_date NOT BETWEEN '2019-01-01' AND '2019-03-31') #Return the product not sold in this term

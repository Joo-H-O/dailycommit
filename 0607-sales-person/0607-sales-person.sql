# Write your MySQL query statement below
SELECT name
FROM SalesPerson
WHERE sales_id NOT IN ( #Finding the name which is NOT related to the company 'RED'
    SELECT sales_id
    FROM Orders
    WHERE com_id IN ( #Finding the sales_id which is related to the company 'RED'
            SELECT com_id
            FROM Company
            WHERE name LIKE 'RED') #Finding the com_id which is related to the company 'RED'
)
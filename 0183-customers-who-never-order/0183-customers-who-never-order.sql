# Write your MySQL query statement below
SELECT C.name AS Customers
FROM Orders O
RIGHT JOIN Customers C ON C.id = O.customerId
WHERE O.customerId IS NULL #find all customers not in Orders table

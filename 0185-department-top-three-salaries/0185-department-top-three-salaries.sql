# Write your MySQL query statement below
SELECT Sub.Department, Sub.Employee, Sub.salary
FROM (
    SELECT E.name AS Employee,
        E.salary,
        D.name AS Department,
        DENSE_RANK() OVER(PARTITION BY E.departmentId ORDER BY E.salary DESC) AS numb
    FROM Employee E
    JOIN Department D ON D.id = E.departmentId
) Sub
WHERE numb <= 3
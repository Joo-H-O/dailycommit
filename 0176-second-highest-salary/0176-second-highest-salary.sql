# Write your MySQL query statement below
SELECT MAX(salary) AS SecondHighestSalary #If doesn't have any row, return null
FROM (SELECT id, salary, 
    DENSE_RANK() OVER(ORDER BY salary DESC) AS RANK_sal #Return DENSE RANK of salary
    FROM Employee) S
WHERE RANK_sal = 2 #Return 2nd highest salary
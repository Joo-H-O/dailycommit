# Write your MySQL query statement below
SELECT E1.name AS Employee
FROM Employee E1
LEFT JOIN Employee E2 ON E2.Id = E1.managerId #Join manager id
WHERE E1.salary >= E2.salary #find the employees who earn more than their managers

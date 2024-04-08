# Write your MySQL query statement below
SELECT D.name AS Department, 
    E.name AS Employee, 
    E.salary AS salary
FROM Employee E
JOIN Department D ON D.id = E.departmentId
WHERE (E.departmentId, E.salary) IN (
    SELECT departmentId, MAX(salary) AS salary
	FROM Employee
	GROUP BY departmentId
    ) #Return only emp have a max salary in every dep
# Write your MySQL query statement below
SELECT employee_id,
        department_id
FROM Employee
WHERE primary_flag LIKE 'Y' #Return the employee_id whose primary_flag 'Y'
UNION #Use UNION for different aggregate functions
SELECT employee_id, department_id
FROM (
    SELECT employee_id, department_id, 
           COUNT(employee_id) OVER (PARTITION BY employee_id) AS CNT 
    FROM Employee
) AS subquery
WHERE CNT = 1 #Return the employee_id whose primary_flag is 'N and has only 1 department_id
ORDER BY employee_id

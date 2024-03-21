# Write your MySQL query statement below
SELECT employee_id, 
        CASE 
            WHEN employee_id % 2 = 1 AND name NOT LIKE 'M%' THEN salary*1 #Find odd number&name does not start with the character 'M' then salary 100%
            ELSE 0 
        END AS bonus
FROM Employees
ORDER BY employee_id

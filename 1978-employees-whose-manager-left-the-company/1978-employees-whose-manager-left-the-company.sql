SELECT employee_id
FROM Employees A
WHERE salary < 30000 #Finding the employee who have salary lower than $30,000
    AND manager_id NOT IN (
      SELECT employee_id FROM Employees
    ) #Finding the mngno not in empno
ORDER BY employee_id #ORDER BY query

# Write your MySQL query statement below
SELECT id, IFNULL(next_std, student) AS student #the last student is not swapped
FROM (
    SELECT id, student, 
        CASE WHEN MOD(id, 2) = 1 THEN LEAD(student) OVER(ORDER BY id) #Odd number - Return the next consecutive student
            WHEN MOD(id, 2) = 0 THEN LAG(student) OVER(ORDER BY id) #Even number - Return the previous consecutive student
            END AS next_std
    FROM Seat) Sub
ORDER BY id #Return the result table ordered by id in ascending order
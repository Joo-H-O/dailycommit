# Write your MySQL query statement below
SELECT DISTINCT num AS ConsecutiveNums 
FROM Logs
WHERE (id - 1, num) IN (SELECT id, num FROM Logs) AND #Return previous id also has same num
    (id - 2, num) IN (SELECT id, num FROM Logs) #Return pre-previous id also has same num
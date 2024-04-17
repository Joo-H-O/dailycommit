# Write your MySQL query statement below
SELECT ROUND(SUM(tiv_2016), 2) AS tiv_2016
FROM Insurance
WHERE pid IN (
    SELECT pid 
    FROM Insurance 
    GROUP BY lat, lon 
    HAVING COUNT(pid) = 1) #Return pid are not located in the same city (lat, lon were same)
    AND
    tiv_2015 IN (
    SELECT tiv_2015
    FROM Insurance
    GROUP BY tiv_2015
    HAVING COUNT(*) >= 2)
#Return tiv_2015 have the same value as one or more other policyholders
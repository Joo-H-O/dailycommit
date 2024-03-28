# Write your MySQL query statement below
SELECT*
FROM Patients
WHERE conditions REGEXP '\\bDIAB1'
#Includes 'DIAB1', and any string can be included on either side
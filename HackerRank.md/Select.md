/*Nested CASE WHEN*/
SELECT 
    CASE WHEN (A + B > C) AND (A + C > B) AND (B + C > A) THEN #Select a triangle
            CASE
                WHEN A = B AND B = C THEN 'Equilateral'  #Select 3 sides of equal length
                WHEN A = B OR B = C OR A = C THEN 'Isosceles' #Select 2 sides of equal length
                ELSE 'Scalene' #Just a triangle
            END
        ELSE 'Not A Triangle' #A, B, C cant make a triangle
    END AS TRIANGLE
FROM TRIANGLES

Problem - https://www.hackerrank.com/challenges/what-type-of-triangle/problem?isFullScreen=true

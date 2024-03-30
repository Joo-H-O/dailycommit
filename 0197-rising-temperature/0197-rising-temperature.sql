SELECT id
FROM (
    SELECT id, recordDate, temperature,
           LAG(recordDate) OVER (ORDER BY recordDate) AS datedif, #Return the Previous date
            LAG(temperature) OVER (ORDER BY recordDate) AS tempdif #Return the Previous temperature
    FROM Weather
) AS inline
WHERE DATEDIFF(recordDate, datedif) = 1 AND 
        tempdif < temperature #higher temperatures compared to yesterday
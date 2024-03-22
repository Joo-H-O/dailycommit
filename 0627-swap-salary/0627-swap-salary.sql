# Write your MySQL query statement below
UPDATE salary #single update statement
SET sex = CASE WHEN sex LIKE 'f' THEN 'm' ELSE 'f' END #swap all 'f' and 'm' values
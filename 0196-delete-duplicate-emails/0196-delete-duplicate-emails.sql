# Write your MySQL query statement below
DELETE FROM Person #Use DELETE instead SELECT
WHERE id NOT IN (
    SELECT id
    FROM (
        SELECT id, ROW_NUMBER() OVER(PARTITION BY email ORDER BY id) AS NUM #Return double email ordr by id
        FROM Person
    ) A
    WHERE A.NUM = 1 #Return only 1st id
)
# Write your MySQL query statement below
SELECT DISTINCT author_id AS id #To distinct the id viewed several times
FROM Views
WHERE author_id = viewer_id #find all the authors that viewed at least one of their own articles
ORDER BY id #sorted by id in asc
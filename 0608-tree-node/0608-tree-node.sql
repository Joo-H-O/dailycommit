# Write your MySQL query statement below
SELECT DISTINCT T1.id,
    CASE WHEN T1.p_id IS NULL THEN 'Root' #Return 'Root' when doesn't have p_id
    WHEN T1.p_id IS NOT NULL AND T2.id IS NOT NULL THEN 'Inner' #Return 'Inner' when have p_id, child id
    WHEN T1.p_id IS NOT NULL AND T2.id IS NULL THEN 'Leaf' #Return 'Leaf' when only have p_id
    END AS type
FROM Tree T1
LEFT JOIN Tree T2 ON T1.id = T2.p_id

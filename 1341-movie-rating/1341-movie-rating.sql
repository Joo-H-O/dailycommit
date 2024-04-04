(SELECT U.name AS results
FROM Users U
JOIN MovieRating M ON U.user_id = M.user_id
GROUP BY U.user_id
ORDER BY COUNT(M.rating) DESC, U.name
LIMIT 1) #Return the user rated mostly
UNION ALL
(SELECT M.title AS results
FROM Movies M
JOIN MovieRating MR ON M.movie_id = MR.movie_id
WHERE MR.created_at LIKE '2020-02%'
GROUP BY M.title
ORDER BY AVG(MR.rating) DESC, M.title
LIMIT 1) #Return the movie has highest rating
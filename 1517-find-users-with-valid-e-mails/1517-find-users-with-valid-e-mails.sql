# Write your MySQL query statement below
SELECT * FROM Users
WHERE mail REGEXP '^[a-zA-Z]+[a-zA-Z0-9_.-]*@leetcode\\.com$'
#Use Regular Expression, 1st must start with a letter / 2nd can contain _.-(0 repetition) / Domain is @leetcode.com END
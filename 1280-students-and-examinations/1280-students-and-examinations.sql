# Write your MySQL query statement below
SELECT S.student_id, 
        S.student_name, 
        SB.subject_name, 
        COUNT(E.student_id) AS attended_exams
FROM Students S
CROSS JOIN Subjects SB #Cartesian Product for Student table and Subjects table
LEFT JOIN Examinations E ON S.student_id = E.student_id AND 
                            SB.subject_name = E.subject_name #Join all table
GROUP BY S.student_id, S.student_name, SB.subject_name
ORDER BY 1, 2

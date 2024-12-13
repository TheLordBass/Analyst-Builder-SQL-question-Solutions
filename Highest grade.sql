SELECT student_name, class_id, grade
FROM (
    SELECT student_name, class_id, grade,
           RANK() OVER (PARTITION BY student_name ORDER BY grade DESC, class_id) AS row_num
    FROM highest_grade
) ranked_grades
WHERE row_num = 1
ORDER BY student_name;

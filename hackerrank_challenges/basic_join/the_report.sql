SELECT IF(grade > 7, name, NULL), grade, marks
FROM students, grades
WHERE marks BETWEEN min_mark AND max_mark
ORDER BY grade DESC, name

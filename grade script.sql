USE sql_final_project;

SELECT * 
FROM professors;
SELECT * 
FROM courses;
SELECT * 
FROM students;
SELECT * 
FROM grades;

SELECT *
FROM grades
WHERE enrolled_course_id = 1;
SELECT avg(grade), p.professor_name
FROM grades g
JOIN courses c
ON g.enrolled_course_id = c.course_id
JOIN professors p
ON c.course_professor_id = p.professor_id
GROUP BY c.course_professor_id;

SELECT s.student_name, MAX(grade), c.subject
FROM grades g
JOIN courses c
ON g.enrolled_course_id = c.course_id
JOIN students s
ON g.enrolled_student_id = s.student_id
GROUP BY s.student_id;

SELECT c.subject, AVG(grade)
FROM grades g
JOIN courses c
ON g.enrolled_course_id=c.course_id
GROUP BY g.enrolled_course_id
ORDER BY AVG(grade) ASC;

SELECT s.student_name, p.professor_name, COUNT(grade)
FROM students s
JOIN grades g
ON s.student_id = g.enrolled_student_id
JOIN courses c
ON g.enrolled_course_id = c.course_id
JOIN professors p
ON c.course_professor_id = p.professor_id
GROUP BY p.professor_id, s.student_id
ORDER BY COUNT(grade) DESC;



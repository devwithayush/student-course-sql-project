-- using database
USE studentdb;

-- creating view for student and course
CREATE VIEW student_courses_view AS
SELECT s.student_name, c.course_name
FROM student s
JOIN student_course sc ON s.student_id = sc.student_id
JOIN course c ON sc.course_id = c.course_id;

-- SHOW VIEW OUTPUT
SELECT * FROM student_courses_view;
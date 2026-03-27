-- using database
USE studentdb;

-- Show students with courses
SELECT s.student_name, c.course_name
FROM student s
JOIN student_course sc ON s.student_id = sc.student_id
JOIN course c ON sc.course_id = c.course_id;

-- Count courses per student
SELECT s.student_name, COUNT(sc.course_id) AS total_courses
FROM student s
JOIN student_course sc ON s.student_id = sc.student_id
GROUP BY s.student_name;

-- Students with more than 1 course
SELECT s.student_name, COUNT(sc.course_id) AS total_courses
FROM student s
JOIN student_course sc ON s.student_id = sc.student_id
GROUP BY s.student_name
HAVING COUNT(sc.course_id) > 1;

-- Most popular course
SELECT c.course_name, COUNT(sc.student_id) AS total_students
FROM course c
JOIN student_course sc ON c.course_id = sc.course_id
GROUP BY c.course_name
ORDER BY total_students DESC;
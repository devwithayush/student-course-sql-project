-- using database
USE studentdb;

-- inserting students
INSERT INTO student (student_name) VALUES
('Ayush'),
('Rahul'),
('Neha'),
('Simran'),
('Amit');

-- inserting courses
INSERT INTO course (course_name) VALUES
('Python'),
('SQL'),
('Java'),
('Data Science'),
('Web Development');

-- inserting enrollment data
INSERT INTO student_course (student_id, course_id) VALUES
(1, 100), -- Ayush → Python
(1, 101), -- Ayush → SQL
(2, 101), -- Rahul → SQL
(2, 102), -- Rahul → Java
(3, 100), -- Neha → Python
(3, 103), -- Neha → Data Science
(4, 104), -- Simran → Web Dev
(5, 100), -- Amit → Python
(5, 102); -- Amit → Java

-- SHOW DATA
SELECT * FROM student;
SELECT * FROM course;
SELECT * FROM student_course;
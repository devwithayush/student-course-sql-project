-- creating database
CREATE DATABASE IF NOT EXISTS studentdb;

-- using database
USE studentdb;

-- STUDENT TABLE
CREATE TABLE student (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL
);

-- COURSE TABLE
CREATE TABLE course (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(50) NOT NULL
) AUTO_INCREMENT = 100;

-- STUDENT COURSE TABLE
CREATE TABLE student_course (
    student_id INT NOT NULL,
    course_id INT NOT NULL,

    -- composite key to avoid duplicate enrollments
    PRIMARY KEY (student_id, course_id),

    -- foreign key for student
    CONSTRAINT fk_sc_student 
    FOREIGN KEY (student_id)
    REFERENCES student(student_id)
    ON DELETE CASCADE,

    -- foreign key for course
    CONSTRAINT fk_sc_course
    FOREIGN KEY (course_id)
    REFERENCES course(course_id)
    ON DELETE CASCADE
);

-- SHOW TABLE STRUCTURE 
DESCRIBE student;
DESCRIBE course;
DESCRIBE student_course;
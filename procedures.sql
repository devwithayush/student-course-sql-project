-- using database
USE studentdb;

-- procedure to enroll student
DELIMITER //

-- PROCEDURCE FOR ENROLLED STUDENT 
CREATE PROCEDURE enroll_student(
    IN s_id INT,
    IN c_id INT
)
BEGIN
    INSERT INTO student_course VALUES (s_id, c_id);
END //

DELIMITER ;

-- TEST PROCEDURE
CALL enroll_student(1, 102);
SELECT * FROM student_course;
-- Student Management System (Mini DBMS Project)

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(30)
);

CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50)
);

CREATE TABLE Marks (
    student_id INT,
    course_id INT,
    marks INT,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

INSERT INTO Students VALUES
(1, 'Amit', 'CSE'),
(2, 'Neha', 'ECE');

INSERT INTO Courses VALUES
(101, 'DBMS'),
(102, 'OS');

INSERT INTO Marks VALUES
(1, 101, 85),
(1, 102, 78),
(2, 101, 90);

SELECT s.name, c.course_name, m.marks
FROM Students s
JOIN Marks m ON s.student_id = m.student_id
JOIN Courses c ON m.course_id = c.course_id;

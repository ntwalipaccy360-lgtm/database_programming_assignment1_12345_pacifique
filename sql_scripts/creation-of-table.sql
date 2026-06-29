-- Create Students table
CREATE TABLE Students (
    StudentID NUMBER PRIMARY KEY,
    StudentName VARCHAR2(100),
    Gender VARCHAR2(10),
    Department VARCHAR2(100)
);

-- Create Courses table
CREATE TABLE Courses (
    CourseID NUMBER PRIMARY KEY,
    CourseName VARCHAR2(100),
    Credits NUMBER
);

-- Create Enrollments table
CREATE TABLE Enrollments (
    EnrollmentID NUMBER PRIMARY KEY,
    StudentID NUMBER,
    CourseID NUMBER,
    Semester VARCHAR2(20),
    Marks NUMBER,

    CONSTRAINT fk_student
        FOREIGN KEY (StudentID)
        REFERENCES Students(StudentID),

    CONSTRAINT fk_course
        FOREIGN KEY (CourseID)
        REFERENCES Courses(CourseID)
);


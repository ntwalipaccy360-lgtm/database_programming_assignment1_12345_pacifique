## Business Problem
This project is designed to manage and analyze student academic performance in a university environment. The system tracks students, courses, and enrollments, and uses advanced SQL techniques such as Common Table Expressions (CTEs) and Window Functions to generate meaningful academic insights such as student performance ranking, course analysis, and enrollment trends.
## Database Schema

The system consists of three related tables:

### 1. Students
- StudentID (Primary Key)
- StudentName
- Gender
- Department

### 2. Courses
- CourseID (Primary Key)
- CourseName
- Credits

### 3. Enrollments
- EnrollmentID (Primary Key)
- StudentID (Foreign Key)
- CourseID (Foreign Key)
- Semester
- Marks
## ER Diagram

The system contains the following relationships:

- One Student can have many Enrollments
- One Course can have many Enrollments
- Each Enrollment links one Student to one Course

### Relationships:
Students (1) —— (M) Enrollments (M) —— (1) Courses
## CTE Implementations

This project includes five Common Table Expression (CTE) implementations:

### 1. Simple CTE
Used to retrieve basic student or enrollment data in a structured way.

### 2. Multiple CTEs
Combines multiple temporary result sets to perform complex queries in steps.

### 3. Recursive CTE
Used to simulate step-by-step processing of student enrollments.

### 4. Aggregation CTE
Calculates total marks, average marks, and number of courses per student.

### 5. JOIN CTE
Combines Students, Courses, and Enrollments to generate a full academic performance report.

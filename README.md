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

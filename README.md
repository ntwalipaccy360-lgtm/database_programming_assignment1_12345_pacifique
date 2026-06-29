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

## Window Functions Implementations

This project includes several SQL Window Function techniques for data analysis:

### 1. Ranking Functions
- ROW_NUMBER(): Assigns a unique sequential number to each row.
- RANK(): Assigns rank with gaps when there are ties.
- DENSE_RANK(): Assigns rank without gaps for tied values.

### 2. Aggregate Window Functions
- SUM() OVER(): Calculates total marks across all students.
- AVG() OVER(): Computes average marks across all students.
- MIN() OVER(): Finds lowest mark in the dataset.
- MAX() OVER(): Finds highest mark in the dataset.

### 3. Navigation Functions
- LAG(): Retrieves previous row value for comparison.
- LEAD(): Retrieves next row value for comparison.

### 4. Distribution Functions
- NTILE(): Divides students into performance groups.
- CUME_DIST(): Shows cumulative distribution of marks.

## Analysis and Findings

### Descriptive Analysis
The data shows student enrollment records, course participation, and marks obtained across different courses. It helps summarize overall academic performance.

### Diagnostic Analysis
Differences in student performance are observed due to variations in marks across different courses and student engagement levels.

### Prescriptive Analysis
The system suggests that students with low performance should receive academic support, while high-performing students can be recommended for advanced courses or opportunities.

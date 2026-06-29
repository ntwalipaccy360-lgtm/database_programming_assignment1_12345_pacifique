1.Simple CTE
  
-- Simple CTE Example
WITH HighMarks AS
(
    SELECT StudentID, CourseID, Marks
    FROM Enrollments
    WHERE Marks >= 80
)

SELECT *
FROM HighMarks;

2.Multiple CTEs
  
-- Multiple CTE Example

WITH AverageMarks AS
(
    SELECT CourseID,
           AVG(Marks) AS AverageMark
    FROM Enrollments
    GROUP BY CourseID
),

HighAverageCourses AS
(
    SELECT *
    FROM AverageMarks
    WHERE AverageMark >= 80
)

SELECT c.CourseName,
       h.AverageMark
FROM HighAverageCourses h
JOIN Courses c
ON h.CourseID = c.CourseID;


3.Recursive CTE
  
-- Recursive CTE using Oracle CONNECT BY (SAFE VERSION)
WITH EnrollmentPath AS (
    SELECT 
        e.StudentID,
        e.EnrollmentID,
        e.CourseID,
        e.Marks,
        LEVEL AS Step
    FROM Enrollments e
    START WITH e.EnrollmentID IN (
        SELECT MIN(EnrollmentID)
        FROM Enrollments
        GROUP BY StudentID
    )
    CONNECT BY PRIOR e.StudentID = e.StudentID
           AND PRIOR e.EnrollmentID < e.EnrollmentID
)

SELECT 
    ep.Step,
    s.StudentName,
    c.CourseName,
    ep.Marks
FROM EnrollmentPath ep
JOIN Students s ON s.StudentID = ep.StudentID
JOIN Courses c ON c.CourseID = ep.CourseID
ORDER BY ep.StudentID, ep.Step;

4. CTE with Aggregation

WITH StudentPerformance AS (
    SELECT 
        e.StudentID,
        SUM(e.Marks) AS TotalMarks,
        AVG(e.Marks) AS AverageMarks,
        COUNT(*) AS TotalCourses
    FROM Enrollments e
    GROUP BY e.StudentID
)

SELECT 
    s.StudentName,
    sp.TotalMarks,
    sp.AverageMarks,
    sp.TotalCourses
FROM StudentPerformance sp
JOIN Students s 
    ON s.StudentID = sp.StudentID
ORDER BY sp.TotalMarks DESC;

5. CTE combined with JOIN operations

WITH StudentCourseReport AS (
    SELECT 
        s.StudentID,
        s.StudentName,
        s.Department,
        c.CourseName,
        c.Credits,
        e.Semester,
        e.Marks
    FROM Enrollments e
    JOIN Students s 
        ON e.StudentID = s.StudentID
    JOIN Courses c 
        ON e.CourseID = c.CourseID
)

SELECT 
    StudentName,
    Department,
    CourseName,
    Credits,
    Semester,
    Marks,

    CASE 
        WHEN Marks >= 85 THEN 'Excellent'
        WHEN Marks >= 70 THEN 'Good'
        WHEN Marks >= 50 THEN 'Pass'
        ELSE 'Fail'
    END AS PerformanceStatus

FROM StudentCourseReport
ORDER BY Marks DESC;

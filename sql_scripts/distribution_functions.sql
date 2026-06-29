1. NTILE()

SELECT 
    s.StudentName,
    c.CourseName,
    e.Marks,

    NTILE(3) OVER (ORDER BY e.Marks DESC) AS PerformanceGroup

FROM Enrollments e
JOIN Students s 
    ON s.StudentID = e.StudentID
JOIN Courses c 
    ON c.CourseID = e.CourseID;

2.  CUME_DIST()

SELECT 
    s.StudentName,
    c.CourseName,
    e.Marks,

    CUME_DIST() OVER (ORDER BY e.Marks DESC) AS CumulativeDistribution

FROM Enrollments e
JOIN Students s 
    ON s.StudentID = e.StudentID
JOIN Courses c 
    ON c.CourseID = e.CourseID;

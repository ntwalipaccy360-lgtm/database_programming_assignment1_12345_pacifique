1. LAG()

SELECT 
    s.StudentName,
    c.CourseName,
    e.Marks,

    LAG(e.Marks) OVER (ORDER BY e.Marks DESC) AS PreviousMarks

FROM Enrollments e
JOIN Students s 
    ON s.StudentID = e.StudentID
JOIN Courses c 
    ON c.CourseID = e.CourseID;

2. LEAD()

SELECT 
    s.StudentName,
    c.CourseName,
    e.Marks,

    LEAD(e.Marks) OVER (ORDER BY e.Marks DESC) AS NextMarks

FROM Enrollments e
JOIN Students s 
    ON s.StudentID = e.StudentID
JOIN Courses c 
    ON c.CourseID = e.CourseID;

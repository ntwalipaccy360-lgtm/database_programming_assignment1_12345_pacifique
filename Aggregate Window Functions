SELECT 
    s.StudentName,
    c.CourseName,
    e.Marks,

    SUM(e.Marks) OVER () AS TotalMarksAllStudents,
    AVG(e.Marks) OVER () AS AverageMarksAllStudents,
    MAX(e.Marks) OVER () AS HighestMark,
    MIN(e.Marks) OVER () AS LowestMark

FROM Enrollments e
JOIN Students s 
    ON s.StudentID = e.StudentID
JOIN Courses c 
    ON c.CourseID = e.CourseID;

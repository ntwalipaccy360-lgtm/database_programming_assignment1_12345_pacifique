1. ROW_NUMBER()

SELECT 
    Marks,
    ROW_NUMBER() OVER (ORDER BY Marks DESC) rn
FROM Enrollments;

2• RANK()

SELECT 
    s.StudentName,
    c.CourseName,
    e.Marks,
    RANK() OVER (ORDER BY e.Marks DESC) AS RankPosition
FROM Enrollments e
JOIN Students s 
    ON s.StudentID = e.StudentID
JOIN Courses c 
    ON c.CourseID = e.CourseID;

3.DENSE_RANK()

SELECT 
    s.StudentName,
    c.CourseName,
    e.Marks,
    DENSE_RANK() OVER (ORDER BY e.Marks DESC) AS DenseRankPosition
FROM Enrollments e
JOIN Students s 
    ON s.StudentID = e.StudentID
JOIN Courses c 
    ON c.CourseID = e.CourseID;

4.  PERCENT_RANK()

SELECT 
    s.StudentName,
    c.CourseName,
    e.Marks,

    PERCENT_RANK() OVER (ORDER BY e.Marks DESC) AS PercentRank

FROM Enrollments e
JOIN Students s 
    ON s.StudentID = e.StudentID
JOIN Courses c 
    ON c.CourseID = e.CourseID;

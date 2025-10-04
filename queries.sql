--List all students with their grades 
SELECT s.Students_ID,s.Firstname,s.Lastname,sub.subject_Name,sc.Notes
FROM Students s 
JOIN Scores sc ON s.Students_ID = sc.Students_ID
JOIN Subjects sub ON sc.Subject_ID = sub.Subject_ID
ORDER BY s.Students_ID , sub.Subject_ID;

--Calculate each student's average grade
SELECT s.Students_ID,s.Firstname,s.Lastname,AVG(n.Notes) AS Average_Score
FROM Students s
JOIN Scores n ON s.Students_ID = n.Students_ID
GROUP BY s.Students_ID, s.Firstname, s.Lastname
ORDER BY Average_Score ASC;

--Count the number of students in each class
SELECT Class, COUNT(*) AS Students
FROM Students
GROUP BY Class
ORDER BY Class;

--Calculate average grades per subject
SELECT s.Students_ID, s.Firstname, s.Lastname,AVG(sc.Notes) AS AvgNote
FROM Students s 
JOIN Scores sc ON s.Students_ID = sc.Students_ID
GROUP BY s.Students_ID,s.Firstname,s.Lastname;

--List students with grades below 50 
SELECT s.Students_ID,s.Firstname,s.Lastname,sub.Subject_Name,sc.Notes
FROM Scores sc
JOIN Students s ON s.Students_ID = sc.Students_ID
JOIN Subjects sub ON sub.Subject_ID = sc.Subject_ID
WHERE sc.Notes < 50
ORDER BY sc.Notes ASC;

--Grades of students who are taking the Web Development course
SELECT s.Students_ID,s.Firstname,s.Lastname,sub.Subject_Name,sc.Notes
FROM Students s 
JOIN Scores sc ON s.Students_ID = sc.Students_ID
JOIN Subjects sub ON sc.Subject_ID = sub.Subject_ID
WHERE sub.Subject_Name = 'Web_Development';

--Count the number of subjects each stundents takes
SELECT s.Students_ID,s.Firstname,s.Lastname,COUNT(sc.Subject_ID) AS SubjectCount
FROM Students
JOIN Scores sc ON s.Students_ID = sc.Students_ID
GROUP BY s.Students_ID,s.Firstname,s.Lastname;

--Find the minimum and maximum grades per subject
SELECT sub.Subject_Name,MIN(sc.Notes) AS Min_Note,MAX(sc.Notes) AS Max_Note
FROM Subjects sub
JOIN Scores sc ON sub.Subject_ID = sc.Subject_ID
GROUP BY sub.Subject_Name;

--List top 3 students with highest average
SELECT s.Students_ID,s.Firstname,s.Lastname,AVG(sc.Notes) AS AVG_Note
FROM Students s 
JOIN Scores sc On s.Students_ID = sc.Students_ID
GROUP BY s.Students_ID,s.Firstname,s.Lastname
ORDER BY AVG_Note DESC
LIMIT 3;

--List bottom 3 students with lowest average 
SELECT s.Students_ID,s.Firstname,s.Lastname,AVG(sc.Notes) AS AVG_Note 
FROM Students s 
JOIN Scores sc On s.Students_ID = sc.Students_ID
GROUP BY s.Students_ID,s.Firstname,s.Lastname
ORDER BY AVG_Note ASC
LIMIT 3;

--List students who scored below 50 in at least 2 subjects 
SELECT s.Firstname,s.Lastname,s.Class
FROM Students s 
JOIN Scores sc ON s.Students_ID = sc.Students_ID
GROUP BY s.Students_ID,s.Firstname,s.Lastname,s.Class
HAVING SUM(CASE WHEN sc.Notes < 50 THEN 1 ELSE 0 END) >= 2;

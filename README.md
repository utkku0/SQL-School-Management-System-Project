##School Management System - SQL Project

This project is a simple school management system created with SQL.It includes tables for students,teachers,scores and subjects .The database allows you to track Student performance, calculate averages and generate reports 

##Tables 

1-Students
 Students_ID (INT,Primary Key)-Unique ID of each student
 Firstname(VARCHAR)-Student's first name 
 Lastname(VARCHAR)-Student's last name 
 Birthdate(DATE)-Student's date of birth
 Class(VARCHAR)-Student's class

2-Subjects
 Subject_ID(INT,Primary Key)-Unique ID of each subject
 Subject_name(VARCHAR)-Name of the subject
 Credit(INT)-Credit hours

3-Scores
 Students_ID(INT,Primary Key)-Linked to Students.Students_ID
 Subject_ID(INT,Primary Key)-Linekd to Subjects.Subject_ID
 Notes(INT)-Score of the student in that subject

4-Teachers 
 Subject_ID(INT,Primary Key)-Linked to Subjects.Subject_ID
 Firstname(VARCHAR)-Teacher's first name 
 Lastname(VARCHAR)-Teacher's last name 
 Email_address(VARCHAR)-Contact email
 Phone_Numbers(VARCHAR)-Contact number

##Queries

-List all students with their grades
-Calculate each student's average grade
-Count the number of students in each class
-Calculate average grades per subject
-List students with grades below 50 
-Grades of students who are taking the Web Development course
-Count the number of subjects each stundents takes
-Find the minimum and maximum grades per subject
-List top 3 students with highest average
-List bottom 3 students with lowest average
-List students who scored below 50 in at least 2 subjects 

##Usage
1-Import the SQL script into your database 
2-Run the queries to see results and reports
3-Modify table structure or add samples as needed for practice or testing 
 

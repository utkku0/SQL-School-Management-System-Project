--Creates the Scores Table 
CREATE TABLE Scores (
  Students_ID INT, 
  Subject_ID INT,
  Notes INT,
  PRIMARY KEY (Students_ID, Subject_ID)
);

--Creates the Students Table 
CREATE TABLE Students (
  Students_ID INT PRIMARY KEY,
  Firstname VARCHAR(50),
  Lastname VARCHAR(50),
  Birthdate DATE,
  Class VARCHAR(10)
);

--Creates the Suýbjects Table 
CREATE TABLE Subjects (
  Subject_ID INT PRIMARY KEY,
  Subject_Name VARCHAR(10),
  Credit INT
);

--Creates the Teachers Table 
CREATE TABLE Teachers (
  Subject_ID INT PRIMARY KEY,
  Firstname VARCHAR(50),
  Lastname VARCHAR(50),
  Email_Address VARCHAR(50),
  Phone_Numbers VARCHAR(30)
);
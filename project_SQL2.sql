-- create database 
CREATE DATABASE school;

-- create tables (students, teachers, classes)
USE school;
CREATE TABLE students(
id INT PRIMARY KEY,
StudentName VARCHAR(225),
DOB DATE ,
SEX VARCHAR(225),
startDate Date ,
studentEmail VARCHAR(225),
academicLevel INT,
StudentTrack VARCHAR(225),
GPA INT
);

CREATE TABLE teachers(
ID INT PRIMARY KEY,
teacherName VARCHAR(225),
DOB DATE ,
SEX VARCHAR(225),
teacherEmail VARCHAR(225),
officeNumber INT
);

CREATE TABLE classes(
Id INT PRIMARY KEY,
className VARCHAR(225)
);


-- Show available tables in DB
SHOW TABLES;

-- Insert 30 Students Information 
INSERT INTO students
VALUES (1111, "Ali","1997-09-04", "M", "2020-05-09", "Ali@mail.com",4,"Scinces",97),
(1112, "Mohammed","1997-08-16", "M", "2020-05-09", "Moh@mail.com",4,"Scinces",85),
(1121, "Sarah","1996-09-17", "F", "2020-05-09", "Sarah@mail.com",5,"Scinces",100),
(1211, "Amal","1995-09-22", "F", "2020-05-09", "Amal@mail.com",6,"Scinces",80),
(2111, "Ayman","1997-07-02", "M", "2020-05-09", "Ay@mail.com",4,"Humanities",97),
(2222, "saqar","1997-09-23", "M", "2020-05-09", "Sq@mail.com",4,"Scinces",97),
(2221, "Abdullah","1996-01-05", "M", "2020-05-09", "abd@mail.com",5,"Humanities",89),
(2212, "hamad","1997-11-17", "M", "2020-05-09", "hamad@mail.com",3,"Scinces",97),
(2122, "Huda","1997-09-22", "F", "2020-05-09", "hu@mail.com",2,"Scinces",85),
(1222, "Samirah","1997-09-23", "F", "2020-05-09", "samirah@mail.com",5,"Scinces",97),
(3333, "Sami","1997-09-01", "M", "2020-05-09", "Sami@mail.com",4,"Scinces",97),
(3331, "Abed","1995-06-05", "M", "2020-05-09", "abed@mail.com",6,"Humanities",89),
(3313, "hmood","1997-08-02", "M", "2020-05-09", "hamood@mail.com",3,"Scinces",97),
(3133, "Hind","1997-09-08", "F", "2020-05-09", "hu@mail.com",2,"Scinces",85),
(1333, "Ola","1997-09-23", "F", "2020-05-09", "Ola@mail.com",5,"Humanities",97),
(4444, "Mazen","1997-09-15", "M", "2020-05-09", "Maz@mail.com",4,"Scinces",97),
(4441, "Faris","1997-08-08", "M", "2020-05-09", "far@mail.com",4,"Scinces",85),
(4414, "Sumyah","1996-08-09", "F", "2020-05-09", "Sum@mail.com",5,"Scinces",100),
(4144, "Shahad","1995-12-27", "F", "2020-05-09", "sh@mail.com",6,"Scinces",80),
(1444, "Ibrahim","1997-08-02", "M", "2020-05-09", "Ibr@mail.com",4,"Humanities",97),
(5555, "Abdurahman","1997-09-16", "M", "2020-05-09", "Abd@mail.com",4,"Scinces",97),
(5551, "Turky","1996-01-05", "M", "2020-05-09", "Tur@mail.com",5,"Humanities",89),
(5515, "Anas","1997-11-17", "M", "2020-05-09", "Anas@mail.com",3,"Scinces",97),
(5155, "Salwa","1997-09-29", "F", "2020-05-09", "hu@mail.com",1,"Scinces",85),
(1555, "btool","1997-09-23", "F", "2020-05-09", "bt@mail.com",5,"Scinces",97),
(6666, "Hassan","1997-09-29", "M", "2020-05-09", "Hassan@mail.com",4,"Scinces",97),
(6661, "Hussain","1995-06-05", "M", "2020-05-09", "Hus@mail.com",6,"Humanities",89),
(6662, "Khalid","1997-8-18", "M", "2020-05-09", "kh@mail.com",3,"Scinces",97),
(6663, "Norah","1997-09-29", "F", "2020-05-09", "Nor@mail.com",2,"Scinces",85),
(6664, "Taif","1997-09-23", "F", "2020-05-09", "Taif@mail.com",5,"Humanities",97);

-- Insert 10 Teachers Information 

INSERT INTO teachers
VALUES (2220, "Hatem","1997-09-29", "M", "hat@mail.com",654),
(3330, "Ghaith","1997-08-04", "M", "ghaith@mail.com",678),
(4440, "Ghassan","1997-09-07", "M", "ghass@mail.com",876),
(5550, "Erjwan","1997-09-03", "F", "er@mail.com",789),
(2121, "Hussam","1997-09-09", "M", "Hussam@mail.com",222),
(4534, "Ezz","1997-08-04", "M", "Ezz@mail.com",345),
(7865, "Hattan","1997-09-22", "M", "Hattan@mail.com",987),
(9865, "Rhaf","1997-09-29", "F", "Rahaf@mail.com",654),
(5487, "Samir","1997-09-23", "M", "samir@mail.com",980),
(6660, "Riadh","1997-09-15", "M", "riadh@mail.com",432);


-- Insert 6 Subjects Information 
INSERT INTO classes
VALUES (1357,"English"),
(1579, "Math"),
(3579, "Physics"),
(2468, "Chemistry"),
(4681,"Arabic"),
(2469,"History");

-- Show all tables

SELECT * FROM students;
SELECT * FROM teachers;
SELECT * FROM classes;

-- Show the  students name in  ASC order
SELECT * FROM students ORDER BY studentName ASC;

/* Show the contents of the students table and give an alias to the 
"student name" field to shorten the name of the column or make it meaningful */

SELECT studentName As Ename FROM students;

-- Updating a student’s data and changing the student’s e-mail
UPDATE students 
SET studentEmail = "Mohammad@mail.com"
WHERE id=1112; 
SELECT * FROM students;


-- Updating a teacher’s data and changing his office number
UPDATE teachers 
SET officeNumber = 789
WHERE ID =3330; 
SELECT * FROM teachers;

-- Modify the name of one of the Tables

ALTER TABLE classes
RENAME TO Courses;
SHOW TABLES;

-- create table for students gpa > 90
CREATE TABLE success
SELECT * FROM students WHERE GPA > 90;
SELECT * FROM success; -- show the table

-- create table for students gpa < 60
CREATE TABLE fail
SELECT * FROM students WHERE GPA < 60;
SELECT * FROM fail; -- show the table

-- show students names who starts with A
SELECT * FROM students WHERE StudentName LIKE 'A';

-- show students names 4 letters
SELECT * FROM students WHERE StudentName LIKE '____';


-- create columns to calculate students gpa avg , max , min 
ALTER TABLE students
ADD average INT;
-- ADD maximum INT;
-- ADD minimum INT;

SELECT AVG (GPA) 'avergae' , MAX(GPA) 'maximum', MIN(GPA) FROM students;

-- students with 100 gpa and academic level 6 
SELECT * FROM students WHERE GPA =100 AND academicLevel = 6;

-- show students ages between 15 and 16
SELECT * FROM students WHERE DOB BETWEEN '2005-01-01' AND '2006-01-01';

-- show students in academic level = 2
SELECT * FROM students WHERE academicLevel =2;

-- show student track
SELECT DISTINCT StudentTrack FROM students;

-- show classes names in uppercase
SELECT UPPER(className) FROM classes;

-- update gpa and add 5 to the fail
UPDATE students
SET GPA = GPA + 5 WHERE GPA < 60;


-- replace F to Female and M to MALE
UPDATE students
SET SEX = 'FEMALE' WHERE SEX ='F';
SELECT * FROM students;

UPDATE students
SET SEX = 'MALE' WHERE SEX ='M';
SELECT * FROM students;

-- finding the average using numeric functions
SELECT FLOOR(AVG(GPA)) FROM students;
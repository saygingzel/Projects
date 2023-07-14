-- Language: sql
-- Postgresql database dump
-- Department table with unique Dept_ID (primary key) and unique Dept_Name and Dept_Code columns

-- Graduated table with unique Grad_ID (primary key) and unique Grad_FName and Grad_LName and Grad_Dept_ID as Foreign key referencing Department table



CREATE TABLE Department (
Dept_ID serial PRIMARY KEY,
Dept_Name varchar(50) UNIQUE NOT NULL,
Dept_Code varchar(10) UNIQUE NOT NULL
);

CREATE TABLE Graduated (
Grad_ID serial PRIMARY KEY,
Grad_FName varchar(50) NOT NULL,
Grad_LName varchar(50) NOT NULL,
Grad_Dept_ID int REFERENCES Department(Dept_ID)
);


-- Company table with unique Company_ID (primary key) and unique Company_Name and Company_Area

CREATE TABLE Company (
Company_ID serial PRIMARY KEY,
Company_Name varchar(50) NOT NULL,
Company_Area varchar(50) NOT NULL
);

-- Advisor table with unique Advisor_ID (primary key) and unique Advisor_FName and Advisor_LName 

CREATE TABLE Advisor (
Advisor_ID serial PRIMARY KEY,
Advisor_FName varchar(50) NOT NULL,
Advisor_LName varchar(50) NOT NULL
);

-- Career Office table with Emp_ID (primary key) and unique Emp_FName and Emp_LName  Comp_ID as Foreign key referencing Company table

CREATE TABLE Career_Office_Employeee (
Emp_ID serial PRIMARY KEY,
Emp_FName varchar(50) NOT NULL,
Emp_LName varchar(50) NOT NULL,
Comp_ID int REFERENCES Company(Company_ID)
);

-- Student table with unique Student_ID (primary key) and unique Student_FName and Student_LName and Advisor_ID as Foreign key referencing Advisor table and Grad_ID as Foreign key referencing Graduated table

CREATE TABLE Student (
Student_ID serial PRIMARY KEY,
Student_FName varchar(50) NOT NULL,
Student_LName varchar(50) NOT NULL,
Advisor_ID int REFERENCES Advisor(Advisor_ID),
Grad_ID int REFERENCES Graduated(Grad_ID),
Career_Office_Employeee_ID int REFERENCES Career_Office_Employeee(Emp_ID)
);

-- Professor table with unique Prof_ID (primary key) and unique Prof_FName and Prof_LName 

CREATE TABLE Professor (
Prof_ID serial PRIMARY KEY,
Prof_FName varchar(50) NOT NULL,
Prof_LName varchar(50) NOT NULL

);





-- Seminar table with unique Seminar_ID (primary key) and  Seminar_Loc and Seminar_Date and Prof_ID as Foreign key referencing Professor table

CREATE TABLE Seminar (
Seminar_ID serial PRIMARY KEY,
Seminar_Loc varchar(50) NOT NULL,
Seminar_Date varchar(50) NOT NULL,
Prof_ID int REFERENCES Professor(Prof_ID)
);



-- Contact table with unique Contact_ID (primary key) and Cont_Date and Grad_ID as Foreign key referencing Graduated table and Student_ID as Foreign key referencing Student table

CREATE TABLE Contact (
Contact_ID serial PRIMARY KEY,
Cont_Date varchar(50) NOT NULL,
Grad_ID int REFERENCES Graduated(Grad_ID),
Student_ID int REFERENCES Student(Student_ID)
);


-- Participate table with unique Part_ID (primary key) and Part_Date and Student_ID as Foreign key referencing Student table and Seminar_ID as Foreign key referencing Seminar table

CREATE TABLE Participate (
Part_ID serial PRIMARY KEY,
Part_Date varchar(50) NOT NULL,
Student_ID int REFERENCES Student(Student_ID),
Seminar_ID int REFERENCES Seminar(Seminar_ID)
);


-- Insert 20 unique data to Professor table with unique Prof_ID (primary key) and unique  Prof_FName and unique Prof_LName using jonnetanninen/random-name-generator

INSERT INTO Professor (Prof_ID, Prof_FName, Prof_LName) VALUES 
(1, 'Mehmet', 'Yılmaz'),
(2, 'Ahmet', 'Ünlü'),
(3, 'Ejder', 'Okay'),
(4, 'Güvenç', 'Özhan'),
(5, 'Pembe', 'Keleş'),
(6, 'Nesrin', 'Mehmed'),












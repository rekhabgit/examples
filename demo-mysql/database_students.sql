CREATE DATABASE student;
use student;

CREATE TABLE students(
    studentID int not null AUTO_INCREMENT,
    FirstName varchar(100) NOT NULL,
    Surname varchar(100) NOT NULL,
    PRIMARY KEY (studentID)
);

INSERT INTO students(FirstName, Surname)
VALUES("Rekha","Babu"),("Ramya","Babu");
-- Create Students table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    BirthDate DATE,
    Gender VARCHAR(10)
);

-- Create Courses table
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    Credits INT
);

-- Create Enrollments table
CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

-- Insert sample data into Students
INSERT INTO Students (StudentID, FirstName, LastName, BirthDate, Gender)
VALUES 
(1, 'John', 'Doe', '2000-01-15', 'Male'),
(2, 'Jane', 'Smith', '1999-11-10', 'Female');

-- Insert sample data into Courses
INSERT INTO Courses (CourseID, CourseName, Credits)
VALUES 
(1, 'Mathematics', 4),
(2, 'Computer Science', 3),
(3, 'History', 2);

-- Insert sample data into Enrollments
INSERT INTO Enrollments (EnrollmentID, StudentID, CourseID, EnrollmentDate)
VALUES 
(1, 1, 1, '2023-01-10'),
(2, 2, 2, '2023-01-15');


select * from Students ;

select * from Courses ;

select * from Enrollments
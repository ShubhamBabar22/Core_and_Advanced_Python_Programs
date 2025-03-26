mysql>CREATE DATABASE StudentManagementSystem;
mysql> USE StudentManagementSystem;
Database changed
mysql> -- Create Student Table

mysql> -- Create Student Table
mysql> CREATE TABLE Student (
    ->     StudentID INT PRIMARY KEY AUTO_INCREMENT,
    ->     FirstName VARCHAR(50),
    ->     LastName VARCHAR(50),
    ->     DateOfBirth DATE,
    ->     Gender ENUM('Male', 'Female', 'Other'),
    ->     Email VARCHAR(100),
    ->     Phone VARCHAR(15)
    -> );
ERROR 1050 (42S01): Table 'student' already exists
mysql> -- Create Course Table
mysql> CREATE TABLE Course (
    ->     CourseID INT PRIMARY KEY AUTO_INCREMENT,
    ->     CourseTitle VARCHAR(100),
    ->     Credits VARCHAR(5)
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> -- Create Instructor Table
mysql> CREATE TABLE Instructor (
    ->     InstructorID INT PRIMARY KEY AUTO_INCREMENT,
    ->     FirstName VARCHAR(50),
    ->     LastName VARCHAR(50),
    ->     Email VARCHAR(100)
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql> -- Create Enrollment Table
mysql> CREATE TABLE Enrollment (
    ->     EnrollmentID INT PRIMARY KEY AUTO_INCREMENT,
    ->     EnrollmentDate DATE,
    ->     StudentID INT,
    ->     CourseID INT,
    ->     InstructorID INT,
    ->     FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    ->     FOREIGN KEY (CourseID) REFERENCES Course(CourseID),
    ->     FOREIGN KEY (InstructorID) REFERENCES Instructor(InstructorID)
    -> );
Query OK, 0 rows affected (0.07 sec)

mysql> -- Create Score Table
mysql> CREATE TABLE Score (
    ->     ScoreID INT PRIMARY KEY AUTO_INCREMENT,
    ->     CourseID INT,
    ->     StudentID INT,
    ->     DateOfExam DATE,
    ->     CreditObtained INT,
    ->     FOREIGN KEY (CourseID) REFERENCES Course(CourseID),
    ->     FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
    -> );
Query OK, 0 rows affected (0.06 sec)

mysql> -- Create Feedback Table
mysql> CREATE TABLE Feedback (
    ->     FeedbackID INT PRIMARY KEY AUTO_INCREMENT,
    ->     StudentID INT,
    ->     Date DATE,
    ->     InstructorName VARCHAR(100),
    ->     Feedback TEXT,
    ->     FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql> -- Insert Sample Data into Student Table
mysql> INSERT INTO Student (FirstName, LastName, DateOfBirth, Gender, Email, Phone) VALUES
    -> ('Shubham', 'Babar', '2000-05-15', 'Male', 'shubham@example.com', '1234567890'),
    -> ('Vivek', 'Patil', '1999-07-20', 'Male', 'vivek@example.com', '9876543210'),
    -> ('Rohit', 'Sharma', '2001-08-10', 'Male', 'rohit@example.com', '4567891230'),
    -> ('Priya', 'Desai', '2000-12-25', 'Female', 'priya@example.com', '7891234560'),
    -> ('Anjali', 'Jadhav', '1998-11-30', 'Female', 'anjali@example.com', '3216549870');
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> -- Insert Sample Data into Course Table
mysql> INSERT INTO Course (CourseTitle, Credits) VALUES
    -> ('Computer Science', 4),
    -> ('Mathematics', 3),
    -> ('Physics', 4),
    -> ('Chemistry', 3),
    -> ('Biology', 3);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> -- Insert Sample Data into Instructor Table
mysql> INSERT INTO Instructor (FirstName, LastName, Email) VALUES
    -> ('Rahul', 'Joshi', 'rahul@example.com'),
    -> ('Sneha', 'Kumar', 'sneha@example.com'),
    -> ('Amit', 'Gupta', 'amit@example.com'),
    -> ('Neha', 'Sharma', 'neha@example.com'),
    -> ('Raj', 'Verma', 'raj@example.com');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> -- Insert Sample Data into Enrollment Table
mysql> INSERT INTO Enrollment (EnrollmentDate, StudentID, CourseID, InstructorID) VALUES
    -> ('2025-01-10', 1, 1, 1),
    -> ('2025-02-15', 2, 2, 2),
    -> ('2025-03-20', 3, 3, 3),
    -> ('2025-04-25', 4, 4, 4),
    -> ('2025-05-30', 5, 5, 5);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> -- Insert Sample Data into Score Table
mysql> INSERT INTO Score (CourseID, StudentID, DateOfExam, CreditObtained) VALUES
    -> (1, 1, '2025-06-01', 85),
    -> (2, 2, '2025-06-02', 90),
    -> (3, 3, '2025-06-03', 88),
    -> (4, 4, '2025-06-04', 92),
    -> (5, 5, '2025-06-05', 87);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> -- Insert Sample Data into Feedback Table
mysql> INSERT INTO Feedback (StudentID, Date, InstructorName, Feedback) VALUES
    -> (1, '2025-06-10', 'Rahul Joshi', 'Great teaching style!'),
    -> (2, '2025-06-11', 'Sneha Kumar', 'Very informative lectures.'),
    -> (3, '2025-06-12', 'Amit Gupta', 'Helped a lot in understanding concepts.'),
    -> (4, '2025-06-13', 'Neha Sharma', 'Good interaction with students.'),
    -> (5, '2025-06-14', 'Raj Verma', 'Excellent guidence.');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> -- Retrieve Data from All Tables
mysql> SELECT * FROM Student;
+-----------+-----------+----------+-------------+--------+---------------------+------------+
| StudentID | FirstName | LastName | DateOfBirth | Gender | Email
    | Phone      |
+-----------+-----------+----------+-------------+--------+---------------------+------------+
|         1 | Shubham   | Babar    | 2000-05-15  | Male   | shubham@example.com | 1234567890 |
|         2 | Vivek     | Patil    | 1999-07-20  | Male   | vivek@example.com   | 9876543210 |
|         3 | Rohit     | Sharma   | 2001-08-10  | Male   | rohit@example.com   | 4567891230 |
|         4 | Priya     | Desai    | 2000-12-25  | Female | priya@example.com   | 7891234560 |
|         5 | Anjali    | Jadhav   | 1998-11-30  | Female | anjali@example.com  | 3216549870 |
+-----------+-----------+----------+-------------+--------+---------------------+------------+
5 rows in set (0.01 sec)

mysql> SELECT * FROM Course;
+----------+------------------+---------+
| CourseID | CourseTitle      | Credits |
+----------+------------------+---------+
|        1 | Computer Science | 4       |
|        2 | Mathematics      | 3       |
|        3 | Physics          | 4       |
|        4 | Chemistry        | 3       |
|        5 | Biology          | 3       |
+----------+------------------+---------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM Instructor;
+--------------+-----------+----------+-------------------+
| InstructorID | FirstName | LastName | Email             |
+--------------+-----------+----------+-------------------+
|            1 | Rahul     | Joshi    | rahul@example.com |
|            2 | Sneha     | Kumar    | sneha@example.com |
|            3 | Amit      | Gupta    | amit@example.com  |
|            4 | Neha      | Sharma   | neha@example.com  |
|            5 | Raj       | Verma    | raj@example.com   |
+--------------+-----------+----------+-------------------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM Enrollment;
+--------------+----------------+-----------+----------+--------------+
| EnrollmentID | EnrollmentDate | StudentID | CourseID | InstructorID |
+--------------+----------------+-----------+----------+--------------+
|            1 | 2025-01-10     |         1 |        1 |            1 |
|            2 | 2025-02-15     |         2 |        2 |            2 |
|            3 | 2025-03-20     |         3 |        3 |            3 |
|            4 | 2025-04-25     |         4 |        4 |            4 |
|            5 | 2025-05-30     |         5 |        5 |            5 |
+--------------+----------------+-----------+----------+--------------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM Score;
+---------+----------+-----------+------------+----------------+
| ScoreID | CourseID | StudentID | DateOfExam | CreditObtained |
+---------+----------+-----------+------------+----------------+
|       1 |        1 |         1 | 2025-06-01 |             85 |
|       2 |        2 |         2 | 2025-06-02 |             90 |
|       3 |        3 |         3 | 2025-06-03 |             88 |
|       4 |        4 |         4 | 2025-06-04 |             92 |
|       5 |        5 |         5 | 2025-06-05 |             87 |
+---------+----------+-----------+------------+----------------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM Feedback;
+------------+-----------+------------+----------------+-----------------------------------------+
| FeedbackID | StudentID | Date       | InstructorName | Feedback
                     |
+------------+-----------+------------+----------------+-----------------------------------------+
|          1 |         1 | 2025-06-10 | Rahul Joshi    | Great teaching style!                   |
|          2 |         2 | 2025-06-11 | Sneha Kumar    | Very informative lectures.              |
|          3 |         3 | 2025-06-12 | Amit Gupta     | Helped a lot in understanding concepts. |
|          4 |         4 | 2025-06-13 | Neha Sharma    | Good interaction with students.         |
|          5 |         5 | 2025-06-14 | Raj Verma      | Excellent guidence.                     |
+------------+-----------+------------+----------------+-----------------------------------------+
5 rows in set (0.00 sec)

mysql>


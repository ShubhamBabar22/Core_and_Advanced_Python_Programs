mysql> create database DAY5;
Query OK, 1 row affected (0.02 sec)

mysql> use DAY5;
Database changed
mysql> CREATE TABLE Students (
    ->     ID INT PRIMARY KEY,
    ->     Firstname VARCHAR(50),
    ->     Lastname VARCHAR(50),
    ->     Gender VARCHAR(10),
    ->     Age INT,
    ->     Address VARCHAR(255),
    ->     PhoneNo VARCHAR(15)
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql> INSERT INTO Students (ID, Firstname, Lastname, Gender, Age, Address, PhoneNo) VALUES
    -> (1, 'Rohan', 'Babar', 'Male', 20, 'Pune', '9876543210'),
    -> (2, 'Ananya', 'Pandey', 'Female', 22, 'Mumbai', '9876543211'),
    -> (3, 'Vievk', 'Nikam', 'Male', 21, 'Satara', '9876543212'),
    -> (4, 'Pooja', 'Sawant', 'Female', 23, 'Nashik', '9876543213'),
    -> (5, 'Sairaj', 'Pawar', 'Male', 22, 'Kolhapur', '9876543214');
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> -- Lab 1: Retrieve student information sorted by last name in ascending order
mysql> SELECT * FROM Students
    -> ORDER BY Lastname ASC;
+----+-----------+----------+--------+------+----------+------------+
| ID | Firstname | Lastname | Gender | Age  | Address  | PhoneNo    |
+----+-----------+----------+--------+------+----------+------------+
|  1 | Rohan     | Babar    | Male   |   20 | Pune     | 9876543210 |
|  3 | Vievk     | Nikam    | Male   |   21 | Satara   | 9876543212 |
|  2 | Ananya    | Pandey   | Female |   22 | Mumbai   | 9876543211 |
|  5 | Sairaj    | Pawar    | Male   |   22 | Kolhapur | 9876543214 |
|  4 | Pooja     | Sawant   | Female |   23 | Nashik   | 9876543213 |
+----+-----------+----------+--------+------+----------+------------+
5 rows in set (0.00 sec)

-- Lab 2: Count the number of students based on their gender
mysql> SELECT Gender, COUNT(*) AS Students_count
    -> FROM Students
    -> GROUP BY Gender;
+--------+----------------+
| Gender | Students_count |
+--------+----------------+
| Male   |              3 |
| Female |              2 |
+--------+----------------+
2 rows in set (0.01 sec)

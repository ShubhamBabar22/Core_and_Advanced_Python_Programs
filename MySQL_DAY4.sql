
mysql> create database Day3;
Query OK, 1 row affected (0.06 sec)

mysql> use Day3;
Database changed
mysql> -- Create Employee Table
mysql> CREATE TABLE Employee (emp_id INT AUTO_INCREMENT PRIMARY KEY, first_name VARCHAR(50), last_name VARCHAR(50), age INT, email VARCHAR(100));
Query OK, 0 rows affected (0.08 sec)

mysql> -- Task 1: Insert Data
mysql> INSERT INTO Employee (first_name, last_name, age, email) VALUES
    -> ('Shubham', 'Babar', 26, 'shubham@gmail.com'),
    -> ('Vivek', 'Patil', 32, 'vivek@gmail.com'),
    -> ('Rohit', 'Sharma', 28, 'rohit@gmail.com'),
    -> ('Neha', 'Desai', 35, 'neha@gmail.com'),
    -> ('Anjali', 'Jadhav', 40, 'anjali@gmail.com');
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> -- Task 2: Retrieve first_name and last_name of all employees
mysql> SELECT first_name, last_name FROM Employee;
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| Shubham    | Babar     |
| Vivek      | Patil     |
| Rohit      | Sharma    |
| Neha       | Desai     |
| Anjali     | Jadhav    |
+------------+-----------+
5 rows in set (0.01 sec)

mysql> -- Task 3: Retrieve employees older than 30
mysql> SELECT first_name, last_name, age FROM Employee WHERE age > 30;
+------------+-----------+------+
| first_name | last_name | age  |
+------------+-----------+------+
| Vivek      | Patil     |   32 |
| Neha       | Desai     |   35 |
| Anjali     | Jadhav    |   40 |
+------------+-----------+------+
3 rows in set (0.01 sec)

mysql> -- Task 3: Retrieve employees older than 30
mysql> SELECT first_name, last_name, age FROM Employee WHERE age > 30;
+------------+-----------+------+
| first_name | last_name | age  |
+------------+-----------+------+
| Vivek      | Patil     |   32 |
| Neha       | Desai     |   35 |
| Anjali     | Jadhav    |   40 |
+------------+-----------+------+
3 rows in set (0.00 sec)

mysql> -- Task 4: Update age by 1 for employees older than 25
mysql> UPDATE Employee SET age = age + 1 WHERE age > 25;
Query OK, 5 rows affected (0.01 sec)
Rows matched: 5  Changed: 5  Warnings: 0

mysql> SELECT * FROM Employee;
+--------+------------+-----------+------+---------------------+
| emp_id | first_name | last_name | age  | email               |
+--------+------------+-----------+------+---------------------+
|      1 | Shubham    | Babar     |   27 | shubham@gmail.com |
|      2 | Vivek      | Patil     |   33 | vivek@gmail.com   |
|      3 | Rohit      | Sharma    |   29 | rohit@gmail.com   |
|      4 | Neha       | Desai     |   36 | neha@gmail.com    |
|      5 | Anjali     | Jadhav    |   41 | anjali@gmail.com  |
+--------+------------+-----------+------+---------------------+
5 rows in set (0.00 sec)

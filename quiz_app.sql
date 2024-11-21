CREATE DATABASE quiz_app;

USE quiz_app;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    username VARCHAR(255) UNIQUE,
    phone_no VARCHAR(10),
    password VARCHAR(255),
    enrollment_no VARCHAR(255)
);

CREATE TABLE questions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    section VARCHAR(255),
    question TEXT,
    option1 TEXT,
    option2 TEXT,
    option3 TEXT,
    answer INT
);

CREATE TABLE scores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255),
    section VARCHAR(255),
    score INT
);

INSERT INTO questions (section, question, option1, option2, option3, answer) 
VALUES 
('DSA', 'What does FIFO stand for?', 'First In First Out', 'Last In First Out', 'First In Last Out', 1),
('DSA', 'Which data structure is commonly used in recursion?', 'Stack', 'Queue', 'Tree', 1),
('DSA', 'What is the average time complexity of binary search?', 'O(log n)', 'O(n)', 'O(n^2)', 1);

INSERT INTO questions (section, question, option1, option2, option3, answer) 
VALUES 
('DBMS', 'What does RDBMS stand for?', 'Relational Database Management System', 'Rapid Database Management System', 'Relational Data Management System', 1),
('DBMS', 'Which key is used to uniquely identify a record in a table?', 'Primary Key', 'Unique Key', 'Foreign Key', 1),
('DBMS', 'What is the purpose of a foreign key?', 'To link two tables', 'To uniquely identify a record', 'To create an index', 1);

INSERT INTO questions (section, question, option1, option2, option3, answer) 
VALUES 
('Python', 'Which keyword is used to create a function in Python?', 'def', 'function', 'create', 1),
('Python', 'What is the result of print(3 ** 2)?', '6', '9', '8', 2),
('Python', 'Which of the following is not a built-in data type in Python?', 'List', 'Set', 'ArrayList', 3);

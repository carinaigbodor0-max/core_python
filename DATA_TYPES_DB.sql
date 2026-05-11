CREATE DATABASE IF NOT EXISTS DATA_TYPES_DB;

USE DATA_TYPES_DB;
CREATE TABLE people (
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50),
age TINYINT,
score int
);
INSERT INTO people (name, age, score) VALUES
('tomi', 25,1200),
('lola', 30, 950),
('esther', 18, 2000);
SELECT * FROM people;

#FLOAT/DECIMAL
CREATE TABLE test_numbers (
FLOA FLOAT,
DECIM DECIMAL(10,2)
);

INSERT INTO test_numbers VALUES (0.1 + 0.2, 0.1 + 0.2);

INSERT INTO test_numbers VALUES (0.1 + 0.2 + 0.3777, 0.6777);
SELECT * FROM test_numbers;
TRUNCATE test_numbers;

CREATE TABLE devices (
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50),
is_on BIT(1)
);
INSERT INTO devices (name, is_on) VALUES
('Fan', b'1'),
('Light', b'0'),
('AI', b'1');
SELECT * FROM devices; 
CREATE TABLE users (
id INT AUTO_INCREMENT PRIMARY KEY,
state CHAR(2),
name VARCHAR(50),
email VARCHAR(100),
bio TEXT
);

INSERT INTO users (state, name, email, bio) VALUES
('LA', 'adijat', 'adi@gmail.com', 'I love data science and teaching.'),
('NY', 'ben', 'ben@mail.com', 'Software developer and ML enngineer.');

SELECT * FROM users;

CREATE TABLE students (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    gender VARCHAR(6),
    state VARCHAR(50),
    email CHAR(100),
    phone CHAR(15)
    );
    
INSERT INTO students (name, gender, state, email, phone) VALUES
('amusan hannah', 'Female', 'kwara', 'amusan@gmail.com', 081400000),
('falusi omolola', 'Female', 'osun', 'lola@example.com', 070466665),
('loveth esther', 'Female', 'kogi',  'esther@school.com', 090822222),
('rhoda innocent', 'Female', 'abia', 'rhoda@mail.com', 081400000);

select * from students;

SELECT name, UPPER(name) AS upper_name FROM students;

SELECT CONCAT(name, gender,email) AS full_info from students;

SELECT name, SUBSTRING(name, 1,7) AS short_name FROM students;

SELECT *
FROM students
WHERE SUBSTRING(name, 1, 3) = 'lov';

SELECT *
FROM students
WHERE name LIKE 'LOV%';

INSERT INTO students  (name, gender, state, email, phone)
 VALUES ('loveth OBAJEMU', 'Female', 'kogi',  'esther@school.com', 090822222);
 
 SELECT id, state, name, 
       REPLACE(state, 'kogi', 'lagos') AS updated_state
FROM students
WHERE id = 5;
SELECT * FROM students;
-- Create database
CREATE DATABASE lab_db;
USE lab_db;

-- Create tables
CREATE TABLE student (
  id INT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  major VARCHAR(50),
  score DECIMAL(5,2)
);

-- Insert sample data
INSERT INTO student (id, name, major, score) VALUES
  (2021210001, 'Alice', 'Computer Science', 95.0),
  (2021210002, 'Bob',   'Software Engineering', 88.5);

-- Query: average score by major
SELECT major, AVG(score) AS avg_score
FROM student
GROUP BY major;

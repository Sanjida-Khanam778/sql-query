CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  roll VARCHAR(20) UNIQUE NOT NULL,
  name VARCHAR(100),
  age INT,
  department VARCHAR(50),
  score INTEGER,
  status VARCHAR(20),
  last_login DATE
);

INSERT INTO students (roll, name, age, department, score, status, last_login)
VALUES 
  ('CSE2021001', 'Sanjida Khanam', 22, 'CSE', 88.50, 'passed', '2025-05-20'),
  ('EEE2021002', 'Mehefuj Ali', 23, 'EEE', 76.00, 'passed', '2025-05-18'),
  ('CSE2021003', 'Trisha Ahmed', 21, 'CSE', 59.75, 'passed', '2025-05-19'),
  ('BBA2021004', 'Rahim Uddin', 24, 'BBA', 39.00, 'failed', '2025-05-17'),
  ('ENG2021005', 'Fatima Noor', 22, 'ENG', 91.25, 'passed', '2025-05-15');
INSERT INTO students (roll, name, age, department, score, status, last_login)
VALUES   ('ENG2851775', 'Nitu Zannat', 58, 'ENG', 51.25, 'passed', '2023-05-15');

SELECT * FROM students

SELECT * FROM students WHERE score>80 AND score IS NOT NULL

SELECT * FROM students WHERE NOT department = 'CSE'

SELECT * FROM students
WHERE name ILIKE 'A%'

SELECT * FROM students
WHERE age BETWEEN 18 AND 25

SELECT * FROM students
WHERE roll IN ('ENG2051775','CSE2021003')

SELECT count(*) as total FROM students

SELECT round(AVG(score)) as Average_Score FROM students WHERE department = 'CSE'

SELECT max(age), min(age) FROM students

UPDATE students SET status = 'failed' WHERE score<55

DELETE FROM students WHERE last_login < CURRENT_DATE - INTERVAL '1 year'

SELECT * FROM students 
LIMIT 5 OFFSET 5 

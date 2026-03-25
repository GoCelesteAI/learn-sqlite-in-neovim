-- Episode 11: DELETE
-- Learn SQLite in Neovim

.mode column
.headers on

CREATE TABLE students (
  id INTEGER PRIMARY KEY,
  name TEXT,
  subject TEXT,
  grade TEXT,
  status TEXT
);

INSERT INTO students (name, subject, grade, status) VALUES
  ('Alice Chen', 'Math', 'A', 'active'),
  ('Bob Martinez', 'Math', 'B', 'withdrawn'),
  ('Carol Davis', 'Physics', 'A', 'active'),
  ('Dan Wilson', 'Physics', 'D', 'active'),
  ('Eva Brown', 'Math', 'B', 'active'),
  ('Frank Lee', 'Physics', 'B', 'withdrawn'),
  ('Grace Kim', 'Math', 'F', 'withdrawn'),
  ('Hank Adams', 'Physics', 'B', 'active');

SELECT * FROM students;

DELETE FROM students WHERE name = 'Bob Martinez';

SELECT * FROM students;

DELETE FROM students WHERE status = 'withdrawn';

SELECT * FROM students;

DELETE FROM students WHERE grade = 'D' OR grade = 'F';

SELECT * FROM students;

DELETE FROM students;

SELECT * FROM students;

DROP TABLE students;

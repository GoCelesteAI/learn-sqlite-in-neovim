-- Episode 10: UPDATE
-- Learn SQLite in Neovim

.mode column
.headers on

CREATE TABLE students (
  id INTEGER PRIMARY KEY,
  name TEXT,
  subject TEXT,
  grade TEXT
);

INSERT INTO students (name, subject, grade) VALUES
  ('Alice Chen', 'Math', 'B'),
  ('Bob Martinez', 'Math', 'C'),
  ('Carol Davis', 'Science', 'A'),
  ('Dan Wilson', 'Science', 'D'),
  ('Eva Brown', 'Math', 'B'),
  ('Frank Lee', 'Science', 'C'),
  ('Grace Kim', 'Math', 'F'),
  ('Hank Adams', 'Science', 'B');

SELECT * FROM students;

UPDATE students SET grade = 'A' WHERE name = 'Alice Chen';

SELECT * FROM students;

UPDATE students SET grade = 'B' WHERE grade = 'C';

SELECT * FROM students;

UPDATE students SET subject = 'Physics' WHERE subject = 'Science';

SELECT * FROM students;

UPDATE students SET grade = 'A';

SELECT * FROM students;

-- Episode 12: ALTER TABLE
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
  ('Alice Chen', 'Math', 'A'),
  ('Bob Martinez', 'Math', 'B'),
  ('Carol Davis', 'Physics', 'A'),
  ('Dan Wilson', 'Physics', 'C');

SELECT * FROM students;

ALTER TABLE students ADD COLUMN email TEXT;

SELECT * FROM students;

UPDATE students SET email = 'alice@techcorp.com' WHERE name = 'Alice Chen';
UPDATE students SET email = 'bob@wayland.com' WHERE name = 'Bob Martinez';
UPDATE students SET email = 'carol@acme.com' WHERE name = 'Carol Davis';
UPDATE students SET email = 'dan@globex.com' WHERE name = 'Dan Wilson';

SELECT * FROM students;

ALTER TABLE students RENAME COLUMN subject TO course;

SELECT * FROM students;

ALTER TABLE students RENAME TO enrollments;

SELECT * FROM enrollments;

.tables

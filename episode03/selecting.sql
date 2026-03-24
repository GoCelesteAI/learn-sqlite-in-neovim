-- Episode 3: Selecting Columns
-- Learn SQLite in Neovim

.mode column
.headers on

CREATE TABLE books (
  id INTEGER PRIMARY KEY,
  title TEXT,
  author TEXT,
  pages INTEGER
);

INSERT INTO books (title, author, pages) VALUES ('The Hobbit', 'J.R.R. Tolkien', 310),
                                                ('Dune', 'Frank Herbert', 412),
                                                ('1984', 'George Orwell', 328),
                                                ('Neuromancer', 'William Gibson', 271),
                                                ('Foundation', 'Isaac Asimov', 244);

SELECT * FROM books;

SELECT title, author FROM books;

SELECT title, pages FROM books;

SELECT author, title, pages FROM books;

SELECT title FROM books;

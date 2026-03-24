-- Episode 2: Inserting Data
-- Learn SQLite in Neovim

.mode column
.headers on

CREATE TABLE books (
  id INTEGER PRIMARY KEY,
  title TEXT,
  author TEXT,
  pages INTEGER
);

INSERT INTO books (title, author, pages) VALUES ('The Hobbit', 'J.R.R. Tolkien', 310);
INSERT INTO books (title, author, pages) VALUES ('Dune', 'Frank Herbert', 412);
INSERT INTO books (title, author, pages) VALUES ('1984', 'George Orwell', 328);

SELECT * FROM books;

INSERT INTO books (title, author, pages) VALUES ('Neuromancer', 'William Gibson', 271),
                                                ('Foundation', 'Isaac Asimov', 244),
                                                ('Brave New World', 'Aldous Huxley', NULL);

SELECT * FROM books;

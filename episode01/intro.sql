-- Episode 1: Hello SQLite
-- Learn SQLite in Neovim

.mode column
.headers on

CREATE TABLE contacts (
  id INTEGER PRIMARY KEY,
  name TEXT,
  phone TEXT
);

INSERT INTO contacts (name, phone) VALUES ('Alice Johnson', '555-1234');
INSERT INTO contacts (name, phone) VALUES ('Bob Martinez', '555-5678');
INSERT INTO contacts (name, phone) VALUES ('Carol Chen', '555-9012');

SELECT * FROM contacts;

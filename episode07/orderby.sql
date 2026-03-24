-- Episode 7: ORDER BY
-- Learn SQLite in Neovim

.mode column
.headers on

CREATE TABLE songs (
  id INTEGER PRIMARY KEY,
  title TEXT,
  artist TEXT,
  year INTEGER,
  duration_seconds INTEGER
);

INSERT INTO songs (title, artist, year, duration_seconds) VALUES
  ('Blinding Lights', 'The Weeknd', 2019, 200),
  ('Bohemian Rhapsody', 'Queen', 1975, 354),
  ('Shape of You', 'Ed Sheeran', 2017, 234),
  ('Billie Jean', 'Michael Jackson', 1982, 294),
  ('Bad Guy', 'Billie Eilish', 2019, 194),
  ('Hotel California', 'Eagles', 1976, 391),
  ('Levitating', 'Dua Lipa', 2020, 203),
  ('Stairway to Heaven', 'Led Zeppelin', 1971, 482);

SELECT title, year FROM songs ORDER BY year;

SELECT title, year FROM songs ORDER BY year DESC;

SELECT title, duration_seconds FROM songs ORDER BY duration_seconds DESC;

SELECT title, artist FROM songs ORDER BY artist;

SELECT title, artist, year FROM songs ORDER BY artist, year DESC;

SELECT title, year FROM songs WHERE year > 2000 ORDER BY year DESC;

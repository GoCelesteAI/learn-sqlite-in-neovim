-- Episode 6: AND, OR, NOT
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

SELECT * FROM songs;

SELECT title, artist, year FROM songs WHERE year > 2015 AND duration_seconds < 250;

SELECT title, artist FROM songs WHERE artist = 'Queen' OR artist = 'Eagles';

SELECT title, year FROM songs WHERE NOT year > 2000;

SELECT title, artist, year FROM songs WHERE (artist = 'The Weeknd' OR artist = 'Billie Eilish') AND year = 2019;

SELECT title, duration_seconds FROM songs WHERE NOT (duration_seconds > 200 AND duration_seconds < 400);

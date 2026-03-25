-- Episode 9: LIKE and Pattern Matching
-- Learn SQLite in Neovim

.mode column
.headers on

CREATE TABLE cities (
  id INTEGER PRIMARY KEY,
  name TEXT,
  country TEXT,
  population INTEGER
);

INSERT INTO cities (name, country, population) VALUES
  ('New York', 'United States', 8336000),
  ('San Francisco', 'United States', 874000),
  ('Nashville', 'United States', 689000),
  ('New Orleans', 'United States', 391000),
  ('San Diego', 'United States', 1386000),
  ('Jacksonville', 'United States', 950000),
  ('Newark', 'United States', 282000),
  ('Santa Fe', 'United States', 88000),
  ('Portland', 'United States', 653000),
  ('San Antonio', 'United States', 1435000);

SELECT * FROM cities;

SELECT name, population FROM cities WHERE name LIKE 'San%';

SELECT name, population FROM cities WHERE name LIKE 'New%';

SELECT name, population FROM cities WHERE name LIKE '%ville';

SELECT name, population FROM cities WHERE name LIKE '%land%';

SELECT name, population FROM cities WHERE name LIKE '_a%';

SELECT name, population FROM cities WHERE name NOT LIKE 'San%';

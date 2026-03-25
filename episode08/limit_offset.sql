-- Episode 8: LIMIT and OFFSET
-- Learn SQLite in Neovim

.mode column
.headers on

CREATE TABLE countries (
  id INTEGER PRIMARY KEY,
  name TEXT,
  continent TEXT,
  population INTEGER,
  area_sq_km INTEGER
);

INSERT INTO countries (name, continent, population, area_sq_km) VALUES
  ('China', 'Asia', 1412000000, 9597000),
  ('India', 'Asia', 1408000000, 3287000),
  ('United States', 'North America', 331000000, 9834000),
  ('Indonesia', 'Asia', 275000000, 1905000),
  ('Pakistan', 'Asia', 229000000, 881000),
  ('Nigeria', 'Africa', 218000000, 924000),
  ('Brazil', 'South America', 214000000, 8516000),
  ('Bangladesh', 'Asia', 171000000, 148000),
  ('Russia', 'Europe', 146000000, 17098000),
  ('Mexico', 'North America', 129000000, 1964000);

SELECT * FROM countries;

SELECT name, population FROM countries ORDER BY population DESC LIMIT 3;

SELECT name, population FROM countries ORDER BY population DESC LIMIT 5;

SELECT name, continent FROM countries LIMIT 5;

SELECT name, continent FROM countries LIMIT 5 OFFSET 5;

SELECT name, area_sq_km FROM countries ORDER BY area_sq_km DESC LIMIT 3 OFFSET 3;

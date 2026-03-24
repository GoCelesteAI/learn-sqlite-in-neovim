-- Episode 4: Data Types
-- Learn SQLite in Neovim

.mode column
.headers on

CREATE TABLE products (
  id INTEGER PRIMARY KEY,
  name TEXT,
  price REAL,
  quantity INTEGER,
  in_stock INTEGER
);

INSERT INTO products (name, price, quantity, in_stock) VALUES ('Wireless Mouse', 29.99, 150, 1),
                                                              ('USB-C Cable', 12.50, 300, 1),
                                                              ('Mechanical Keyboard', 89.95, 0, 0),
                                                              ('Monitor Stand', 45.00, 25, 1),
                                                              ('Webcam HD', 64.99, 0, 0);

SELECT * FROM products;

SELECT name, typeof(name) FROM products;

SELECT price, typeof(price) FROM products;

SELECT quantity, typeof(quantity) FROM products;

SELECT typeof(id), typeof(name), typeof(price), typeof(quantity) FROM products LIMIT 1;

INSERT INTO products (name, price, quantity, in_stock) VALUES ('Laptop Bag', 'forty-five', 10, 1);

SELECT name, price, typeof(price) FROM products;

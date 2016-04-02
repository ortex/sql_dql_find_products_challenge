CREATE TABLE product (
  id   INTEGER,
  name VARCHAR(20),
  town VARCHAR(20)
);

CREATE TABLE provider (
  id   INTEGER,
  name VARCHAR(20),
  rang INTEGER,
  town VARCHAR(20)
);

CREATE TABLE detail (
  id     INTEGER,
  name   VARCHAR(20),
  color  VARCHAR(20),
  weight INTEGER,
  town   VARCHAR(20)
);

CREATE TABLE supply (
  id         INTEGER,
  detail_id  INTEGER,
  product_id INTEGER,
  amount     INTEGER
);

INSERT INTO product (id, name, town) VALUES
  (1, 'Жесткий диск', 'Париж'),
  (2, 'Перфоратор', 'Рим'),
  (3, 'Считыватель', 'Афины'),
  (4, 'Принтер', 'Афины'),
  (5, 'Флоппи-диск', 'Лондон'),
  (6, 'Терминал', 'Осло'),
  (7, 'Лента', 'Лондон');

INSERT INTO provider (id, name, rang, town) VALUES
  (1, 'Смит', 20, 'Лондон'),
  (2, 'Джонс', 10, 'Париж'),
  (3, 'Блейк', 30, 'Париж'),
  (4, 'Кларк', 20, 'Лондон'),
  (5, 'Адамс', 30, 'Афины');

INSERT INTO detail (id, name, color, weight, town) VALUES
  (1, 'Гайка', 'Красный', 12, 'Лондон'),
  (2, 'Болт', 'Зеленый', 17, 'Париж'),
  (3, 'Винт', 'Голубой', 17, 'Рим'),
  (4, 'Винт', 'Красный', 14, 'Лондон'),
  (5, 'Кулачок', 'Голубой', 12, 'Париж'),
  (6, 'Блюм', 'Красный', 19, 'Лондон');

INSERT INTO supply (id, detail_id, product_id, amount) VALUES
  (1, 1, 1, 200),
  (1, 1, 4, 700),
  (1, 2, 1, 500),
  (2, 3, 1, 400),
  (2, 3, 2, 200),
  (2, 3, 3, 200),
  (2, 3, 4, 500),
  (2, 3, 5, 600),
  (2, 3, 6, 400),
  (2, 3, 7, 800),
  (2, 5, 2, 100),
  (3, 3, 1, 200),
  (3, 4, 2, 500),
  (4, 6, 3, 300),
  (4, 6, 7, 300),
  (5, 1, 4, 100),
  (5, 2, 2, 200),
  (5, 2, 4, 100),
  (5, 3, 4, 200),
  (5, 4, 4, 800),
  (5, 5, 4, 400),
  (5, 5, 4, 400),
  (5, 5, 5, 500),
  (5, 5, 7, 100),
  (5, 6, 2, 200);

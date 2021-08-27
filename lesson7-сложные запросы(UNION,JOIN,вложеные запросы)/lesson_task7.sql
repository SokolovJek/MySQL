#TASK1
/*Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.*/
SELECT name FROM users
WHERE id in (SELECT user_id FROM orders);


#TASK2
/*Выведите список товаров products и разделов catalogs, который соответствует товару.*/

SELECT id, name, (SELECT name FROM catalogs WHERE id = catalog_id) FROM products;

#TASK3
/*(по желанию) Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name).
 *  Поля from, to и label содержат английские названия городов, поле name — русское. 
 * Выведите список рейсов flights с русскими названиями городов.
*/

CREATE DATABASE flight;
USE flight;
create TABLE flights (id SERIAl, `from` VARCHAR(50), `to` VARCHAR(50));

create TABLE city (id SERIAl, lable VARCHAR(50), name VARCHAR(50));

INSERT INTO flight.flights
(`from`, `to`)
VALUES
('Kiev', 'Baku'),
('Moskov', 'Minsk'),
('Minsk', 'Borispol'),
('Borispol', 'Mirnyi'),
('Mirnyi', 'Ydahniy'),
('Ydahniy', 'Rostov');

INSERT INTO city
(lable, name)
VALUES
('Baku', 'Баку'),
('Moskov', 'Москва'),
('Minsk', 'Минск'),
('Borispol', 'Бороисполь'),
('Mirnyi', 'Мирный'),
('Ydahniy', 'Удачный'),
('Rostov', 'Ростов');

SELECT id, (SELECT name FROM city WHERE lable = `from`) as `from`, (SELECT name FROM city WHERE lable = `to`) as `to` FROM flights;

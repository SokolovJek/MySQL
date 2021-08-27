#task 1.1
/* Пусть в таблице users поля created_at и updated_at оказались незаполненными. Заполните их текущими датой и временем.  */

ALTER TABLE users ADD COLUMN created_at DATETIME;
ALTER TABLE users ADD COLUMN updated_at DATETIME;

UPDATE users
SET
	created_at = NOW(),
	updated_at = NOW();
	



# task 1.2
/* Таблица users была неудачно с
 * проектирована. Записи created_at и updated_at были заданы типом VARCHAR и в них долгое время помещались значения в формате
 *  "20.10.2017 8:10".Необходимо преобразовать поля к типу DATETIME, сохранив введеные ранее значения.  */

SELECT created_at, updated_at FROM test;

UPDATE test 
SET
created_at = STR_TO_DATE(created_at, '%d.%m.%Y %k:%i'),
updated_at = STR_TO_DATE(updated_at, '%d.%m.%Y %k:%i');

ALTER TABLE test MODIFY COLUMN created_at DATETIME;



#task 1.3
/*  В таблице складских запасов storehouses_products в поле value могут встречаться самые разные цифры: 0, 
 * если товар зако нчился и выше нуля, если на складе имеются запасы. Необходимо отсортировать записи таким
 *  образом, чтобы они выводились в
порядке увеличения значения value. Однако, нулевые запасы должны выводиться в конце, после всех записей. */

SELECT name, `values` FROM store_hause ORDER BY FIELD(`values`, '0');


#TASK 2.1
/*	Подсчитайте средний возраст пользователей в таблице users	*/

SELECT FLOOR(AVG((TO_DAYS(NOW()) - TO_DAYS(birthday)) / 365.25)) AS middle_age FROM profiles;

#TASK 2.2
/*		Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. 
 * Следует учесть, что необходимы дни недели текущего года, а не года рождения.	*/


SELECT COUNT(*) , DAYNAME(DATE_FORMAT(birthday,'2021-%m-%d')) AS day_week FROM profiles GROUP BY day_week;






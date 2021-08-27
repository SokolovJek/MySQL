-- нужно узнать перечень названий продукта которое относится к процессорам(ДВА ВАРИАНТА)
SELECT * FROM catalogs;

SELECT id, name, catalog_id FROM products;  # 1

SELECT id, name, catalog_id FROM products
WHERE catalog_id = 1;

-------------------------------------------
SELECT id, name, catalog_id FROM products     #2
WHERE catalog_id = (SELECT id
FROM shop.catalogs
WHERE name = 'Процессоры');


-- узнаем максимальную цену продукта

SELECT MAX(price) FROM products;

SELECT id, name, catalog_id FROM products
WHERE price = (SELECT MAX(price) FROM products);


-- узнаем цену товара ниже среднего
SELECT id, name, catalog_id FROM products
WHERE price < (SELECT AVG(price) FROM products);


-- укажем явно название поля catalog_id (КАЛЕРИРОВАНЫЙ ЗАПРОС)

SELECT products.id, products.name, (SELECT name FROM catalogs WHERE catalogs.id = products.catalog_id)
FROM products;


-- Оператор равенства по отношению к множеству( IN )
SELECT id, name, catalog_id FROM products        # ERRROR
WHERE catalog_id = (с);

SELECT id, name, catalog_id FROM products        # ALL GOOD
WHERE catalog_id in (SELECT id FROM catalogs);

-- -- Оператор сравнения по отношению к множеству( ANY ( логика или ) == SOME)
SELECT id, name, price, catalog_id FROM products      
WHERE catalog_id = 2 AND price < ANY (SELECT price FROM products WHERE catalog_id = 1);    
#проверка
SELECT id, name, catalog_id, price FROM products ORDER BY catalog_id, price;     

-- -- Оператор сравнения по отношению к множеству( ALL ( логика (и)) )
SELECT id, name, price, catalog_id FROM products      
WHERE catalog_id = 2 AND price > ALL (SELECT price FROM products WHERE catalog_id = 1);    #???
#
SELECT id, name, catalog_id, price FROM products ORDER BY catalog_id, price; 

-- проверка существования записи в таблице ( EXISTS , NOT EXISTS )         (вместо (*) может находится любой столбец)   

SELECT * FROM catalogs
WHERE EXISTS (SELECT * FROM products WHERE catalog_id = catalogs.id); 

SELECT * FROM catalogs
WHERE EXISTS (SELECT 1 FROM products WHERE catalog_id = catalogs.id); 

SELECT * FROM catalogs
WHERE NOT EXISTS (SELECT * FROM products WHERE catalog_id = catalogs.id); 


-- 'досихпор нам возвращался один столбец...''   (catalog_id, 5060.00)-это конструктор строки
SELECT id, name, price, catalog_id FROM products 
WHERE ROW (catalog_id, 5060.00) in (SELECT id, price FROM catalogs);


-- можно передавать вложенный запрос в FROM  !!!!! ОБЯЗАТЕЛЬНО Наличие AS

#можно конечно обойтись и без этого подхода есть подходы проще! НО......
SELECT AVG(price) FROM (SELECT price FROM products WHERE catalog_id = 1) AS d;   
#... если нужно узнать среднюю сумму из минимальных продуктов в каталогах
SELECT MIN(price) FROM products; --не то
SELECT catalog_id ,MIN(price) FROM products GROUP BY catalog_id;    --похоже

SELECT AVG(price) FROM (SELECT MIN(price) AS price FROM products GROUP BY catalog_id) AS d;   ---ВО КАК








































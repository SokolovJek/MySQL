/*Пусть задан некоторый пользователь. Из всех пользователей соц. сети найдите человека, который больше всех общался с выбранным пользователем (написал ему сообщений).*/
SELECT to_user_id, from_user_id, COUNT(from_user_id) AS `sum` from messages
WHERE to_user_id= 1 
GROUP BY from_user_id ORDER BY `sum` DESC 
LIMIT 1;

/*Подсчитать общее количество лайков, которые получили пользователи младше 10 лет..*/
SELECT COUNT(*) 
FROM likes
WHERE id in (
SELECT user_id from profiles
WHERE TIMESTAMPDIFF(YEAR, birthday, NOW()) <= 10);


/*Определить кто больше поставил лайков (всего): мужчины или женщины.*/

SELECT 
	user_id as select_like
FROM likes
WHERE (SELECT user_id as ff, gender from profiles
	WHERE ff = select_like) = 'M';



SELECT 
	user_id
FROM likes GROUP BY user_id
HAVING (SELECT gender from profiles
	WHERE user_id = a) = 'M';


SELECT COUNT(SELECT 
	user_id
FROM likes GROUP BY user_id
HAVING (SELECT gender from profiles
	WHERE user_id = a) = 'M'); 

SELECT user_id from profiles;



SELECT user_id as df, gender from profiles WHERE df = (SELECT user_id FROM likes);
 
SELECT 
	user_id, id
FROM profiles;
	

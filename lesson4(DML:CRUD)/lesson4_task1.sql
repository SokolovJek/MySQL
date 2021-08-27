#i. Заполнить все таблицы БД vk данными (по 10-100 записей в каждой таблице)

INSERT INTO vk.users
(firstname, lastname, email, phone)
VALUES
('jedfdfk', 'sokolov', 'ssdffgdfgd@', NULL),
('jedfk', 'sokolov', 'sdfgsdffg@', NULL),
('jdfek', 'sokolov', 'sdffsadfggd@', NULL),
('jedfk', 'sokolov', 'sdsdsffgd@', NULL),
('jsaek', 'sokolov', 'sgsdffd@', NULL),
('jdfek', 'sokolov', 'sdsdffgd@', NULL),
('jasdek', 'sokolov', 'dfsdffgsd@', NULL),
('jfgek', 'sokolov', 'sdsdfffgd@', NULL),
('jedfhk', 'sokolov', 'sssdfdfgfdfgd@', NULL),
('jsgek', 'sokolov', 'sdfsdd@', NULL),
('jsek', 'sokolov', 'sfsdfgfgd@', NULL),
('je45k', 'sokolov', 'ssdffgfgd@', NULL);

INSERT INTO vk.communities
(name, admin_user_id)
VALUES('asd', 1),
('asasdsd', 3),
('as323asd', 2),
('a234sd', 3),
('asd', 5),
('asqewrd', 3),
('afadsfsd', 5),
('asdfsdsd', 3),
('asf23asd', 6),
('asqwerfzxd', 7),
('asdsf23d', 8);

INSERT INTO vk.users_communities
(user_id, community_id)
VALUES(8, 3),
(1, 1),
(2, 1),
(3, 1),
(4, 2),
(5, 2),
(6, 2),
(7, 3),
(8, 4),
(9, 5),
(8, 6),
(8, 7),
(8, 8),
(8, 1);

INSERT INTO vk.messages
(from_user_id, to_user_id, body, created_at)
VALUES
(1, 2, 'asdfhsdfhdsfhdfshsdfhsdfhsfawawrgf', CURRENT_TIMESTAMP),
(1, 3, 'asdfhsdfhdsfhdfshsdfhsdfhsfawawrgf', CURRENT_TIMESTAMP),
(2, 5, 'asdfhsdfhdsfhdfshsdfhsdfhsfawawrgf', CURRENT_TIMESTAMP),
(3, 7, 'asdfhsdfhdsfhdfshsdfhsdfhsfawawrgf', CURRENT_TIMESTAMP),
(2, 2, 'asdfhsdfhdsfhdfshsdfhsdfhsfawawrgf', CURRENT_TIMESTAMP),
(2, 6, 'asdfhsdfhdsfhdfshsdfhsdfhsfawawrgf', CURRENT_TIMESTAMP),
(3, 8, 'asdfhsdfhdsfhdfshsdfhsdfhsfawawrgf', CURRENT_TIMESTAMP),
(4, 4, 'asdfhsdfhdsfhdfshsdfhsdfhsfawawrgf', CURRENT_TIMESTAMP),
(5, 8, 'asdfhsdfhdsfhdfshsdfhsdfhsfawawrgf', CURRENT_TIMESTAMP),
(2, 6, 'asdfhsdfhdsfhdfshsdfhsdfhsfawawrgf', CURRENT_TIMESTAMP),
(3, 4, 'asdfhsdfhdsfhdfshsdfhsdfhsfawawrgf', CURRENT_TIMESTAMP),
(6, 8, 'asdfhsdfhdsfhdfshsdfhsdfhsfawawrgf', CURRENT_TIMESTAMP),
(4, 9, 'asdfhsdfhdsfhdfshsdfhsdfhsfawawrgf', CURRENT_TIMESTAMP),
(7, 11, 'asdfhsdfhdsfhdfshsdfhsdfhsfawawrgf', CURRENT_TIMESTAMP),
(2, 10, 'asdfhsdfhdsfhdfshsdfhsdfhsfawawrgf', CURRENT_TIMESTAMP)
;

INSERT INTO vk.friend_requests
(initiator_user_id, target_user_id, status, requested_at)
VALUES
(1, 2, 'requested', CURRENT_TIMESTAMP),
(1, 3, 'requested', CURRENT_TIMESTAMP),
(1, 4, 'requested', CURRENT_TIMESTAMP),
(1, 6, 'requested', CURRENT_TIMESTAMP),
(1, 7, 'requested', CURRENT_TIMESTAMP),
(1, 8, 'requested', CURRENT_TIMESTAMP),
(1, 9, 'requested', CURRENT_TIMESTAMP),
(1, 10, 'requested', CURRENT_TIMESTAMP),
(1, 11, 'requested', CURRENT_TIMESTAMP),
(1, 12, 'requested', CURRENT_TIMESTAMP),
(5, 1, 'requested', CURRENT_TIMESTAMP),
(5, 2, 'requested', CURRENT_TIMESTAMP),
(5, 3, 'requested', CURRENT_TIMESTAMP),
(5, 4, 'requested', CURRENT_TIMESTAMP)
;

INSERT INTO vk.media_types
(name)
VALUES('png'),
('mp3'),
('move'),
('giv');

INSERT INTO vk.media
(media_type_id, user_id, body, filename, `size`, metadata)
VALUES
(1, 1, '222', 'tyext', 12, NULL),
(2, 2, '--', 'photo', 34, NULL),
(3, 3, '222', 'video', 12, NULL),
(4, 4, '222--', 'photo', 12, NULL),
(1, 5, '222', 'photo', 121, NULL),
(2, 6, '245w22', 'photo', 112, NULL),
(3, 7, '2w22', 'data', 12, NULL),
(3, 2, '222', 'photo', 152, NULL),
(4, 4, '24522', 'photo', 12, NULL),
(4, 6, '24522', 'photo', 1782, NULL),
(2, 8, '24522', 'content', 142, NULL),
(2, 10, '24522', 'photo', 132, NULL),
(1, 11, '24522', 'my', 152, NULL);

INSERT INTO vk.profiles
(user_id, gender, birthday, photo_id, hometown)
VALUES
(2, 'W', '1991-12-21', 2, 'kiev'),
(3, 'W', '1991-12-21', 3, 'habarovsk'),
(4, 'W', '1991-12-21', 4, 'minsk'),
(5, 'W', '1991-12-21', 5, 'moskov'),
(6, 'W', '1991-12-21', 6, 'london'),
(7, 'M', '1991-12-21', 7, 'donetsk'),
(8, 'M', '1991-12-21', 1, 'rostov'),
(9, 'M', '1991-12-21', 3,'volgograd'),
(10, 'M', '1991-12-21', 4, 'novgorod'),
(11, 'W', '1991-12-21', 5, 'orel'),
(12, 'M', '1991-12-21', 10, 'leningrad')
;

INSERT INTO vk.photo_albums
(name, user_id)
VALUES
('my photo', 1),
('my photo', 2),
('my photo', 3),
('my photo', 4),
('my photo', 5),
('my photo', 6),
('my photo', 7),
('my photo', 8),
('my photo', 9),
('my photo', 10),
('my photo', 11),
('my photo', 12);

INSERT INTO vk.photos
(album_id, media_id)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 1),
(6, 2),
(7, 1),
(8, 7),
(9, 8),
(10, 9),
(11, 10),
(12, 12);

INSERT INTO vk.likes
(user_id, media_id)
VALUES
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(2, 1);



#ii. Написать скрипт, возвращающий список имен (только firstname) пользователей без повторений в алфавитном порядке

SELECT DISTINCT firstname FROM users
ORDER BY firstname;

#iii. Написать скрипт, отмечающий несовершеннолетних пользователей как неактивных (поле is_active = false). Предварительно добавить такое поле в таблицу profiles со значением по умолчанию = true (или 1)


ALTER TABLE profiles ADD COLUMN is_active ENUM('true','false') DEFAULT 'true';

UPDATE profiles
SET
	is_active = 'false'
WHERE birthday > CURRENT_DATE - INTERVAL 18 YEAR;

#iv. Написать скрипт, удаляющий сообщения «из будущего» (дата больше сегодняшней)

INSERT INTO vk.messages
(from_user_id, to_user_id, body, created_at)
VALUES
(1, 2, 'asdfhsdfhdsfhdfshsdfhsdfhsfawawrgf', '2022-08-21 10:59:58');

DELETE FROM messages 
WHERE created_at > CURRENT_TIMESTAMP;


#v. Написать название темы курсового проекта (в комментарии)

# "МОДЕЛЬ БАЗЫ ДАНЫХ ИНТЕРНЕТ-МАГАНЗИНА"




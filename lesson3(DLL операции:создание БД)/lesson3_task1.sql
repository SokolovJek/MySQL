DROP TABLE IF EXISTS heve_car;
CREATE TABLE heve_car(
	user_id BIGINT UNSIGNED NOT NULL,
	brand_car ENUM('Europe', 'Asia', 'America', 'none'),
	car_number VARCHAR(255),
	
	FOREIGN KEY (user_id) REFERENCES users(id)
);


DROP TABLE IF EXISTS car_garage;
CREATE TABLE car_garage(
	user_id BIGINT UNSIGNED NOT NULL,
	address VARCHAR(255),
	
	FOREIGN KEY (user_id) REFERENCES users(id)
);


DROP TABLE IF EXISTS status;
CREATE TABLE status(
	user_id BIGINT UNSIGNED NOT NULL,
	brand ENUM('married', 'single', 'in_active_search'),
	who_id BIGINT UNSIGNED NOT NULL,
	
	FOREIGN KEY (user_id) REFERENCES users(id),
	FOREIGN KEY (who_id) REFERENCES users(id)
);
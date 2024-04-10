CREATE TABLE user (
	user_id INT PRIMARY KEY AUTO_INCREMENT,
	full_name VARCHAR(50),
	email VARCHAR(50),
	password VARCHAR(50)
)
CREATE TABLE retaurant (
	res_id INT PRIMARY KEY AUTO_INCREMENT,
	res_name VARCHAR(50),
	image VARCHAR(50),
	descc VARCHAR(50)
)
CREATE TABLE rate_res (
    user_id INT,
    res_id INT,
    amount INT,
    date_rate DATETIME,
    FOREIGN KEY (user_id) REFERENCES user(user_id),
    FOREIGN KEY (res_id) REFERENCES retaurant(res_id)
);

CREATE TABLE like_res (
    user_id INT,
    res_id INT,
    date_like DATETIME,
    FOREIGN KEY (user_id) REFERENCES user(user_id),
    FOREIGN KEY (res_id) REFERENCES retaurant(res_id)
);
CREATE TABLE food (
	food_id INT PRIMARY KEY AUTO_INCREMENT,
	food_name VARCHAR(50),
	image VARCHAR(50),
	price VARCHAR(50),
	descc VARCHAR(50),
	type_id INT,
	FOREIGN KEY (type_id) REFERENCES food_type(type_id)
)
CREATE TABLE other (
	user_id INT,
	food_id INT,
	amount INT,
	code VARCHAR(50),
	arr_sub_id VARCHAR(50),
	FOREIGN KEY (user_id) REFERENCES user(user_id),	
	FOREIGN KEY (food_id) REFERENCES food(food_id)

)
CREATE TABLE food_type (
    type_id INT PRIMARY KEY AUTO_INCREMENT,
    type_name VARCHAR(50)
);
CREATE TABLE sub_food (
    sub_id INT PRIMARY KEY AUTO_INCREMENT,
    sub_name VARCHAR(50),
    sub_price FLOAT,
    food_id INT,
    FOREIGN KEY (food_id) REFERENCES food(food_id)
);

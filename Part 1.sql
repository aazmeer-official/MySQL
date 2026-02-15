CREATE DATABASE IF NOT EXISTS instagram;
USE instagram;

CREATE TABLE user (
	id INT,
    age INT,
    name VARCHAR(30) NOT NULL,
    email VARCHAR(50) UNIQUE,
    followers INT DEFAULT 0,
    following INT,
    CONSTRAINT CHECK (age>=13),
    primary key (id)
);
 
CREATE TABLE post(
	id INT PRIMARY KEY,
    content VARCHAR(50),
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES user(id)
);

INSERT INTO user 
(id,age,name)
VALUES
(8,20,"random");

INSERT INTO user 
(id,age,name,email,followers,following)
VALUES
(1,14,"adam","adam@gmail.com",123,145),
(2,15,"adams","adams@gmail.com",124,125),
(3,16,"adamss","adamss@gmail.com",125,144),
(4,17,"adamsss","adamssss@gmail.com",126,145);



SELECT distinct age FROM user; 
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
(12,14,"adsam","adasm@gmail.com",1223,145),
(244,15,"adsams","adasms@gmail.com",1254,125),
(34,16,"adsamss","adamsss@gmail.com",125,144),
(42,17,"adasmsss","adamssssss@gmail.com",126,145);
-- SELECT id,name
-- from user 
-- order by id ASC; 



SELECT age,max(followers)
FROM user
GROUP BY age
HAVING max(followers) >= 200;

DROP TABLE user;

-- INSERT INTO post
-- (id,content,user_id)
-- VALUES
-- (101,"Hello World",3),
-- (102,"BYe BYE", 1),
-- (103,"Hello Delta", 3);

-- SELECT * from post;

-- SELECT distinct age FROM user; 
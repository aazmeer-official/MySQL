CREATE TABLE student(
	rollno INT PRIMARY KEY,
    name VARCHAR(34),
    city VARCHAR(34),
    marks int
);


INSERT into student (rollno,name,city,marks)
VALUES
(108,"bob","Mumbai",65),
(110,"adam","Delhi",76),
(112,"duke","Pune",80),
(124,"casey","Pune",94);

SELECT * from student
WHERE marks > 75;

SELECT distinct city from student;

SELECT max(marks) FROM student;

SELECT avg(marks) FROM student;


ALTER TABLE student
ADD column grade varchar(34);


UPDATE student
SET grade = "O"
WHERE marks >=80;

UPDATE student
SET grade = "A"
WHERE marks >=70 AND marks <= 80;

UPDATE student
SET grade = "B"
WHERE marks <=70;
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`(
	id INT PRIMARY KEY AUTO_INCREMENT,
	NAME VARCHAR(10),
	age INT,
	score INT
);
INSERT INTO student VALUES (NULL,'张三',23,99),(NULL,'李四',24,95),
(NULL,'王五',25,98),(NULL,'赵六',26,97);

-- 窗口一
START TRANSACTION;

SELECT * FROM `student` WHERE `id` = 3 FOR UPDATE; -- 当加锁字段有索引时，默认为行锁

SELECT * FROM `student` WHERE `name` = '赵六' FOR UPDATE; -- 加锁字段无索引，就是表锁

COMMIT;

 
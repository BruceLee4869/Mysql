-- 1.写出创建studb数据库，及按照以上格式创建stutb表的sql语句
-- CREATE DATABASE IF NOT EXISTS `studb` CHARACTER SET utf8;

CREATE TABLE `stutb`(
`name` VARCHAR(5),
`age` int,
`sex` VARCHAR(5),
`department` VARCHAR(10),
`score` INT
);

-- 2.写出sql语句完成以上表格中数据的插入
INSERT INTO `stutb`(name,age,sex,department,score) VALUES 
('张三丰',103,'男','IOS就业班',100),
('李峰',23,'男','IOS基础班',90),
('张飞',36,'男','javaEE基础班',40),
('田甜',23,'女','UI基础班',80),
('李根',40,'男','javaEE就业班',9),
('朱迪',18,'女','javaEE基础班',90);

-- 3.写出基础班在读的男学员的所有信息按成绩的降序输出到控制台上（sql语句）
SELECT * FROM `stutb` WHERE sex LIKE '男' AND department LIKE '%基础班' ORDER BY score desc;

-- 4.写出将李根的年龄改为20，班级改为javaEE基础班（sql语句）
UPDATE `stutb` SET age=20 , `department`='javaEE基础班' WHERE `name` LIKE '李根';

-- 5.写出删除低于javaEE基础班平均分的javaEE基础班学生（sql语句）
SELECT * FROM `stutb` WHERE `department` = 'javaEE基础班' AND `score` < (SELECT AVG(`score`) FROM `stutb`);
DELETE FROM `stutb` WHERE `name` IN('张飞','李根');
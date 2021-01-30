-- 1.写出创建schooldb数据库，及按照以上格式创建student表的sql语句
CREATE TABLE `schooldb`(
`id` INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(3),
`sex` VARCHAR(2),
`department` VARCHAR(10),
`score` INT
);


-- 2.写出sql语句完成以上表格中数据的插入
INSERT INTO `schooldb`(name,sex,department,score) VALUES('张三','女','体育系',9),
('李四','男','外语系',10),
('娜娜','女','中文系',6),
('凯蒂','男','外语系',7),
('肖鹿','男','表演系',1),
('菲菲','男','外星系',0)

-- 3.菲菲不是本校学生，删除该记录（sql语句）
DELETE FROM schooldb WHERE `name`='菲菲';

-- 4.缺失一名学生记录，学生信息自己定义（sql语句） 
INSERT INTO `schooldb`(name,sex,department,score) VALUES('李波','男','银河系',999);

-- 5.按照系分组并统计每个系各有多少人（sql语句）
SELECT COUNT(`department`) 组 FROM `schooldb` GROUP BY department;

-- 6.按照学分给表中所有的学员进行排序，按降序将学员姓名输出到控制台上（sql语句）
SELECT `name` FROM schooldb ORDER BY `score` desc;
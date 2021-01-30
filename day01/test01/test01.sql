-- 1.写出创建selldb数据库，及按照以上格式创建sell表的sql语句
CREATE DATABASE IF NOT EXISTS `selldb` CHARACTER SET utf8;
CREATE TABLE `sell`(
`id` INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(6),
`sellnumbers` INT,
`sellmoney` INT,
`money` INT
);

-- 2.写出sql语句完成以上表格中数据的插入
INSERT INTO `sell` (name,sellnumbers,sellmoney,money) VALUES
('郭凤芝',3,900000,8000),
('李清风',1,250000,5000),
('杨晓初',0,0,4000),
('霍币',5,1000000,6000),
('宋明',6,1200000,5000),
('杨洋',2,502000,7000);

-- 3.写出统计sell表一共销售了多少套房源以及总销售额（sql语句）
SELECT SUM(`sellnumbers`) 房源数,SUM(`sellmoney`) 总销售额 FROM `sell`;

-- 4.写出计算低于平均销售额的员工姓名输出到控制台上（sql语句）【自行百度子查询】
SELECT `name` FROM `sell` WHERE sellmoney < (SELECT AVG(sellmoney) FROM `sell`);

-- 5.写出按照销售额的降序进行排列将销售额前三名的工资分别上涨1000,800,500（sql语句）【用三条SQL语句完成，一条SQL给一个人涨工资，自行百度子查询以及错误代码】
SELECT `name` FROM `sell` ORDER BY sellmoney desc;
UPDATE `sell` SET `money`=`money` + 1000 WHERE `name`='宋明';
UPDATE `sell` SET `money`=`money` + 800 WHERE `name`='霍币';
UPDATE `sell` SET `money`=`money` + 500 WHERE `name`='郭凤芝';

-- 6.写出删除10月份0销售额的员工（sql语句）
DELETE FROM `sell` WHERE sellmoney = 0;
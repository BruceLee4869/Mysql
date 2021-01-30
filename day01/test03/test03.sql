-- 	1.写出创建heimadb数据库，及按照以上格式创建rentInfo表的sql语句
CREATE TABLE `rentInfo`(
`type` VARCHAR(8),
`rent` INT,
`area` INT,
`agencyPrice` INT
);

-- 2.写出sql语句完成以上表格中数据的插入
INSERT INTO `rentInfo`(type,rent,area,agencyPrice) VALUES
('主卧',2600,25,1000),
('次卧',1500,18,0),
('两居室',3600,50,800),
('次卧',1450,17,1400),
('主卧',2200,26,0),
('次卧',1800,21,0);

-- 3.写出查询的价格区间（比如：1000-2000），查询出rentInfo表中租金在此区间内的房源信息（sql语句）
SELECT * FROM `rentInfo` WHERE `rent` BETWEEN 1000 AND 2000 ;

-- 4.写出查询无中介费的房源信息（sql语句）
SELECT * FROM `rentInfo` WHERE agencyPrice=0;

-- 5.写出删除rentInfo表中面积小于20平方的次卧（sql语句）
DELETE FROM `rentInfo` WHERE type LIKE '次卧%' AND area<20;

-- 6.写出在rentInfo表新增一条记录（主卧，2300，22，500）的sql语句
INSERT INTO `rentInfo` (type,rent,area,agencyPrice) VALUES
('沙漠海景房','100000000','100000','0');
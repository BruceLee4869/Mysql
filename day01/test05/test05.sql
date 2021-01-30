-- 1.写出创建moneydb数据库，及按照以上格式创建student表的sql语句
CREATE TABLE `monerdb`(
`NAME` VARCHAR(8),
`age` INT,
`address` VARCHAR(20),
`sex` VARCHAR(6),
`money` INT,
`subject` VARCHAR(10)
)
;

-- 2.写出sql语句完成以上表格中数据的插入
INSERT INTO moneydb(name,age,address,sex,money,subject) 
VALUES('帅地瓜',18,'山西省大同市','女',15000,'java'),
('肖丁丁',19,'山东省青岛市','女',10500,'java'),
('盖小二',17,'山东省淄博市','女',10000,'java'),
('杜老大',23,'山东省济南市','女',9000,'javaEE'),
('菜菜',24,'河北省石家庄','女',12000,'javaEE'),
('张庄稼',32,'辽宁省大连市','男',9200,'javaEE'),
('大白',45,'陕西省西安市','男',17500,'java')


-- 3.写出统计java学科薪资在10000以上的学生人数（sql语句）
SELECT COUNT(`name`) FROM moneydb WHERE `subject`='java' AND money>10000;

-- 4.写出查询籍贯是山东省并且年龄在18岁以上的学生姓名（sql语句） 
SELECT name FROM moneydb WHERE address LIKE '山东省%' AND age>18;

-- 5.写出计算javaEE的平均薪资是多少（sql语句）
SELECT AVG(money) FROM moneydb;

-- 6.写出按照薪资降序对所有学员进行排序（sql语句）
SELECT * FROM moneydb ORDER BY money desc;

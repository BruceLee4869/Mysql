/*
SQLyog Ultimate v8.32 
MySQL - 5.5.40 : Database - db4
*********************************************************************
*/ /*!40101 
SET NAMES utf8 */;
/*!40101 
SET SQL_MODE = '' */;
/*!40014 
	SET @OLD_UNIQUE_CHECKS = @@UNIQUE_CHECKS,
	UNIQUE_CHECKS = 0 */;
/*!40014 
	SET @OLD_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS,
	FOREIGN_KEY_CHECKS = 0 */;
/*!40101 
	SET @OLD_SQL_MODE = @@SQL_MODE,
	SQL_MODE = 'NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 
	SET @OLD_SQL_NOTES = @@SQL_NOTES,
	SQL_NOTES = 0 */;
CREATE DATABASE /*!32312
	IF
	NOT EXISTS */`db4` /*!40100 DEFAULT CHARACTER 
SET utf8 */;
USE `db4`;
/*Table structure for table `department` */
DROP TABLE
IF
	EXISTS `department`;
CREATE TABLE `department` (
	`dept_id` INT ( 11 ) NOT NULL AUTO_INCREMENT COMMENT '主键',
	`dept_name` VARCHAR ( 16 ) NOT NULL COMMENT '部门名',
	PRIMARY KEY ( `dept_id` ) 
) ENGINE = MyISAM AUTO_INCREMENT = 6 DEFAULT CHARSET = utf8;
/*Data for the table `department` */
INSERT INTO `department` ( `dept_id`, `dept_name` )
VALUES
	( 1, '行政部' ),
	( 2, '财务部' ),
	( 3, '研发部' ),
	( 4, '开发部' ),
	( 5, '法务部' );
/*Table structure for table `employee` */
DROP TABLE
IF
	EXISTS `employee`;
CREATE TABLE `employee` (
	`emp_id` INT ( 11 ) NOT NULL AUTO_INCREMENT,
	`emp_name` VARCHAR ( 16 ) NOT NULL COMMENT '员工姓名',
	`dept_id` INT ( 11 ) NOT NULL COMMENT '所属部门ID',
	`emp_wage` DOUBLE NOT NULL COMMENT '员工工资',
	PRIMARY KEY ( `emp_id` ) 
) ENGINE = MyISAM AUTO_INCREMENT = 29 DEFAULT CHARSET = utf8;
/*Data for the table `employee` */
INSERT INTO `employee` ( `emp_id`, `emp_name`, `dept_id`, `emp_wage` )
VALUES
	( 28, '客服小姐姐', 0, 3000 ),
	( 27, '陈鑫', 4, 30000 ),
	( 26, '杜文开', 4, 30000 ),
	( 25, '郝利斌', 4, 8000 ),
	( 24, '韩荣峰', 4, 20000 ),
	( 23, '隋蒙桥', 3, 11000 ),
	( 22, '陈玉琳', 3, 10500 ),
	( 21, '黄征', 3, 11000 ),
	( 20, '姜强', 3, 10000 ),
	( 2, '晋文俊', 2, 4000 ),
	( 1, '王纪生', 1, 4500 );
/*!40101 
SET SQL_MODE = @OLD_SQL_MODE */;
/*!40014 
SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS */;
/*!40014 
SET UNIQUE_CHECKS = @OLD_UNIQUE_CHECKS */;
/*!40111 
SET SQL_NOTES = @OLD_SQL_NOTES */;


-- 1.查询工资大于5000的员工信息：员工编号，员工姓名，员工工资，部门名
-- 员工信息 -> employee 表为主表  用外链接解决
SELECT
	e.emp_id,
	e.emp_name,
	e.emp_wage,
	d.dept_name 
FROM
	`employee` e
	LEFT OUTER JOIN `department` d ON e.dept_id = d.dept_id 
WHERE
	e.emp_wage > 5000;
	
	
-- 2.查询人数大于2的部门信息：部门编号，部门名，部门人数
-- 两表交集部分的数据	内连接  子查询
SELECT
	d.dept_id 部门编号,
	d.dept_name 部门名,
	pn 部门人数 
FROM
	`department` d
	JOIN (
	SELECT
		e.dept_id,
		COUNT( 1 ) pn 
	FROM
		`employee` e 
	GROUP BY
		e.dept_id 
	HAVING
	COUNT( 1 ) > 2 
	) A ON a.dept_id = d.dept_id;
	
-- 3.统计各部门的平均工资  
-- 子查询  需要分组 然后求出各组人数 金额 平均工资
SELECT
d.dept_name 部门,
re_0.A 人数,
re_0.sum 金额,
re_0.avg 平均工资
FROM
department d
JOIN
re_0
ON re_0.id=d.dept_id;

CREATE VIEW re_0 AS
SELECT
dept_id id,
SUM(emp_wage) sum,
AVG(emp_wage) avg,
count(1) A
	FROM
employee e
GROUP BY
dept_id
;


	
	
	
	
	
	
	
	
	
	
	
	
	
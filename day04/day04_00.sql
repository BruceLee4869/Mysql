DROP TABLE IF EXISTS `department`;
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
DROP TABLE IF EXISTS `employee`;
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
	
	-- 查询每个部门中工资最高的员工信息：员工编号，员工姓名，员工工资，部门名
SELECT 
		e.emp_id '员工编号',
		e.emp_name '员工姓名',
		e.emp_wage '员工工资',
		d.dept_name
		FROM department d INNER JOIN employee e ON
		d.dept_id = e.dept_id AND e.emp_wage IN (SELECT MAX(emp_wage) FROM `employee` GROUP BY dept_id);

	
	
	
	
	
	
	
	
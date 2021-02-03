-- 在没有主外键的情况下删除主表中的数据时如何把关联的表中的数据也删除掉从而保证数据的完整性.

-- 1.手动删除  部门id为1
DELETE FROM department WHERE `dept_id` = 1; -- 删除id为1的部门
DELETE FROM employee WHERE `dept_id` = 1; -- 删除部门id为1的员工

-- 2.将删除代码写入存储过程中  不建议将java逻辑处理写入数据库语句 可能会导致bug隐藏
DELIMITER $
CREATE PROCEDURE `del`(IN `id` INT)
BEGIN
		DELETE FROM `department` WHERE `dept_id` = `id`;
		DELETE FROM  `employee` WHERE `dept_id` = `id`;
		END $
DELIMITER ;
CALL del(3); 

-- 3.使用触发器 监听删除部门表操作 当删除部门表中的部门时 由监听器来删除该部门下所有的员工
DELIMITER $
CREATE TRIGGER `del`
AFTER DELETE ON `department`
FOR EACH ROW
BEGIN
	DELETE FROM `employee` WHERE `dept_id` = old.dept_id;
	END $
DELIMITER	;	

DELETE FROM `department` WHERE `dept_id`=4;




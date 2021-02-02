CREATE TABLE `ourmoney`(
`id` INT PRIMARY KEY AUTO_INCREMENT,
`name` 	VARCHAR(20),
`money` DECIMAL(10,2)
);

INSERT INTO `ourmoney` (`name`,`money`) VALUES ('爷爷',3000.00),('葫芦娃',3000.11);

-- 定义分隔符为 $
DELIMITER $	
-- 创建存储过程
CREATE PROCEDURE `0201`.`zz`(IN `ye` INT,IN `sun` INT,IN `moneyya` DECIMAL(10,2))
BEGIN
	-- 如果转账金额<=0就不转账，并且返回转账成功和失败的提示，成功返回1，失败返回0
  -- 转账的时候还需要考虑账户余额够不够
	DECLARE `result` INT;
	IF `moneyya` <= 0 THEN
	  SET `result` = 0;
	ELSE 
		UPDATE `ourmoney` SET `money` = `money` - `moneyya` WHERE `id` = `ye`;
		UPDATE `ourmoney` SET `money` = `money` + `moneyya` WHERE `id` = `sun`;
		SET `result` = 1;
	END IF;
	SELECT `result` '成功(1) 失败(0)';
END $

DELIMITER ;

CALL zz(1,2,500.00);




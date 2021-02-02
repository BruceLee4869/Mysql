-- 定义存储函数完成转账功能，如果转账金额<=0就不转账，并且返回转账成功和失败的提示，成功返回1，失败返回0
DROP TABLE IF EXISTS `ourmoney_1`;
CREATE TABLE `ourmoney_1`(
`id` INT PRIMARY KEY AUTO_INCREMENT,
`name` 	VARCHAR(20),
`money` DECIMAL(10,2)
);
INSERT INTO `ourmoney_1` (`name`,`money`) VALUES ('蛇精',3000.00),('蝎子精',3000.11);

DELIMITER $
CREATE FUNCTION `transfer`(`she` INT ,`xie` INT ,`moneyya` INT )
RETURNS INT
BEGIN
DECLARE `result` INT;
IF (SELECT `money` FROM `ourmoney_1` WHERE `id` = `she`)<=`moneyya` THEN
	SET `result` = 0;
ELSE 	
		IF `moneyya` <= 0 THEN
			SET `result` = 0;
		ELSE
			SET `result` = 1;
			UPDATE `ourmoney_1` SET `money` = `money` - `moneyya` WHERE `id` = `she`;
			UPDATE `ourmoney_1` SET `money` = `money` + `moneyya` WHERE `id` = `xie`;
		END IF;
END IF;		
RETURN `result`;
END $
DELIMITER ;

SELECT transfer(1,2,500) '成功(1) 失败(0)';

SELECT * FROM `ourmoney_1`;



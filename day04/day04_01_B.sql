-- 窗口二
START TRANSACTION;

SELECT * FROM `student` WHERE `id` = 3 ; -- 当上个事务中的排他锁查询为提交是，普通查询可以正常运行

SELECT * FROM `student` WHERE `id` = 3 FOR UPDATE;  -- 排他锁

SELECT * FROM `student` WHERE `id` = 2 LOCK IN SHARE MODE; -- 共享锁
-- 当上个事务查询未提交，加锁查询进入等待状态，当上次查询提交后可以查看数据
-- 若此加锁查询不提交，则另一方也不可执行加锁查询
-- 原因是由于排他锁于所有锁不兼容

UPDATE `student` SET `name` = '王2麻' WHERE `id` = 1 ;
-- 行锁 成功 影响0行 数据无变化
-- 表锁 进入事务等待 当上个事务提交后执行

COMMIT;
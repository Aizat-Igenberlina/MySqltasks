DELIMITER $$
CREATE PROCEDURE numbers()
BEGIN 
	DECLARE n INT default 0;
    DROP TABLE IF EXISTS nums;
    CREATE TABLE nums (n INT);
    
    WHILE n < 1000 DO
    SET n = (n % 15 = 0) AND (n % 33 = 0);
    SET n = n + 1;
    INSERT INTO nums VALUES(n);
    END WHILE;
    
SELECT * FROM nums;
END $$
DELIMITER ;

CALL numbers();
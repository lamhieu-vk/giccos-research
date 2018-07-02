DROP FUNCTION IF EXISTS `HAMDIST_PROFILE`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` FUNCTION `HAMDIST_PROFILE`(`firstString` TEXT, `secondString` TEXT) RETURNS INT(3) NOT DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER 
BEGIN
    SET @firstStringCount = LENGTH(firstString) - LENGTH(REPLACE(firstString, '|', '')) + 1;
    SET @secondStringCount = LENGTH(secondString) - LENGTH(REPLACE(secondString, '|', '')) + 1;
    SET @allowDistance = EXPLODE(firstString, '|', 1) - EXPLODE(secondString, '|', 1);
    SET @wrongCount = 0;
    SET @researchLoopi = 2;
    researchLoop: LOOP
    	SET @firstStringNow = EXPLODE(firstString, '|', @researchLoopi);
        SET @secondStringNow = EXPLODE(secondString, '|', @iresearchLoopi);
        IF (@firstStringNow - @secondStringNow <= @allowDistance AND ABS(@allowDistance) >= 8) THEN SET @wrongCount = @wrongCount + 1; END IF;
        SET @researchLoopi = @researchLoopi + 1;
        IF (@researchLoopi > @firstStringCount) THEN LEAVE researchLoop; END IF;
    END LOOP researchLoop;
    SET @value = ROUND(100 - (@wrongCount / @firstStringCount * 100), 2);
    RETURN @value;
END;//
DELIMITER ;
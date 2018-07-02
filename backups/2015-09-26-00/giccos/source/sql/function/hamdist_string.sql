DROP FUNCTION IF EXISTS `HAMDIST_STRING`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` FUNCTION `HAMDIST_STRING`(`firstString` TEXT, `secondString` TEXT) RETURNS INT(3) NOT DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER 
BEGIN
    SET @firstStringCount = CHAR_LENGTH(firstString);
    SET @secondStringCount = CHAR_LENGTH(secondString);
    SET @wrongCount = 0;
    SET @researchLoopi = 0;
    researchLoop: LOOP
        SET @firstStringNow = SUBSTRING(firstString, @researchLoopi, 1);
        SET @secondStringNow = SUBSTRING(secondString, @researchLoopi, 1);
        IF (@firstStringNow != @secondStringNow) THEN SET @wrongCount = @wrongCount + 1; END IF;
        SET @researchLoopi = @researchLoopi + 1;
        IF (@researchLoopi > @firstStringCount) THEN LEAVE researchLoop; END IF;
    END LOOP researchLoop;
    SET @value = ROUND(100 - (@wrongCount / @firstStringCount * 100), 2);
    RETURN @value;
END;//
DELIMITER ;
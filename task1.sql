/*
Создайте функцию, которая принимает кол-во сек и форматирует их в кол-во дней, часов, минут и секунд.
Пример: 123456 ->'1 days 10 hours 17 minutes 36 seconds '
*/
DELIMITER //
DROP PROCEDURE IF EXISTS seconds_convertor;
CREATE PROCEDURE seconds_convertor
(
sec INT
)
BEGIN
    DECLARE days INT;
    DECLARE hours INT;
    DECLARE minutes INT;
    DECLARE seconds INT;
    DECLARE result VARCHAR(255);

	-- FLOOR() - это функция округления вниз до ближайшего целого числа.
    SET days = FLOOR(sec / 86400);   -- 86400 = 60 * 60 * 24;
    SET sec = sec - (days * 86400);

    SET hours = FLOOR(sec / 3600); -- 3600 = 60 * 60;
    SET sec = sec - (hours * 3600);

    SET minutes = FLOOR(sec / 60);
    SET sec = sec - (minutes * 60);

    SET seconds = sec;

    SET result = CONCAT(days, ' days ', hours, ' hours ', minutes, ' minutes ', seconds, ' seconds');

    SELECT result;
END //

CALL seconds_convertor(123456);

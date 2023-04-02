/*
Выведите только четные числа от 1 до 10 включительно. (Через функцию / процедуру)
Пример: 2,4,6,8,10 (можно сделать через шаг +  2: х = 2, х+=2)

*/

DELIMITER //
DROP PROCEDURE IF EXISTS print_even_numbers;
CREATE PROCEDURE print_even_numbers()
BEGIN
    DECLARE x INT ;
    SET x = 1;
    
    WHILE x <= 10 DO
		IF x % 2 = 0 THEN
        	SELECT x;
        END IF;
        SET x = x + 1;
    END WHILE;
END //


CALL print_even_numbers();

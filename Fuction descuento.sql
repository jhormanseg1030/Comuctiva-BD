USE `comuctiva`;
DROP function IF EXISTS `fun_desc`;

DELIMITER $$
USE `comuctiva`$$
CREATE DEFINER=`root`@`localhost` FUNCTION `fun_desc`(descu INT) RETURNS int(11)
BEGIN
    declare des int default 0;
    if descu > 200000 THEN /* Valida si la compra supera los 200.000 para mayor descuento*/
        SET des = 15;
        ELSE IF descu >= 150000 THEN /*Valida si la compra es mayor a 150.000 para un descuento del 15% */
            SET des = 10;
            ELSE IF descu >= 100000 THEN  /*Valida si la compra es mayor a 100.000 para un descuento del 15% */
                SET des = 5;
            END IF;
        END IF;
    END IF;
RETURN descu-(descu*des)/100 /*retorna el valor total a pagar*/;
END$$

DELIMITER ;


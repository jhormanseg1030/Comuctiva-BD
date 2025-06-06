DELIMITER $$
CREATE FUNCTION `fun_desc`(total_pedido DECIMAL(10,2)) RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE descuento DECIMAL(10,2) DEFAULT 0;
    
    IF total_pedido > 200000 THEN
        SET descuento = 15;
    ELSEIF total_pedido >= 150000 THEN
        SET descuento = 10;
    ELSEIF total_pedido >= 100000 THEN
        SET descuento = 5;
    END IF;
    
    RETURN descuento;
END$$
DELIMITER ;
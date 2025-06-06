DELIMITER //
CREATE TRIGGER aplicar_descuento_pedido
BEFORE INSERT ON Pedi_Produc
FOR EACH ROW
BEGIN
    DECLARE descuento_producto DECIMAL(10,2) DEFAULT 0;
    DECLARE descuento_pedido DECIMAL(10,2) DEFAULT 0;
    DECLARE total_pedido DECIMAL(10,2) DEFAULT 0;
    DECLARE pedido_id INT;
    
    -- Obtener el ID del pedido (maneja caso cuando es nuevo)
    SET pedido_id = NEW.ID_Pedido;
    
    -- 1. Obtener descuento específico del producto (si existe)
    SELECT IFNULL(d.Valor, 0) INTO descuento_producto
    FROM Descuentos d
    JOIN Produc_Desc pd ON d.ID_Descu = pd.ID_Descu
    WHERE pd.ID_Producto = NEW.ID_Producto
    LIMIT 1;
    
    -- 2. Calcular total temporal del pedido (incluyendo este nuevo producto)
    SELECT COALESCE(SUM(pp.valor * pp.cant), 0) + (NEW.valor * NEW.cant)
    INTO total_pedido
    FROM Pedi_Produc pp
    WHERE pp.ID_Pedido = pedido_id;
    
    -- 3. Obtener descuento por monto del pedido
    SET descuento_pedido = fun_desc(total_pedido);
    
    -- 4. Aplicar el MAYOR descuento (entre el del producto y el del pedido)
    IF descuento_producto > 0 OR descuento_pedido > 0 THEN
        SET NEW.valor = NEW.valor * (1 - (GREATEST(descuento_producto, descuento_pedido)/100));
    END IF;
END//
DELIMITER ;
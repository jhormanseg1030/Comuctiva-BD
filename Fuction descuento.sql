/*Funcion de descuento*/
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

/*Funcion para calcular el total de un pedido*/
DELIMITER $$
CREATE FUNCTION CalcularTotalPedido(p_ID_Pedido INT) 
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE total DECIMAL(10,2);
    
    SELECT SUM(pp.valor * pp.cant) INTO total
    FROM Pedi_Produc pp
    WHERE pp.ID_Pedido = p_ID_Pedido;
    
    RETURN IFNULL(total, 0);
END$$
DELIMITER ;

/*--------------------*/

/*Join informacion completa de pedidos*/
SELECT 
    p.ID_Pedido,
    u.NomUsu AS Cliente,
    u.correo,
    p.FeHor_Ped AS Fecha_Pedido,
    pr.NomProd AS Producto,
    pp.cant AS Cantidad,
    pp.valor AS Precio_Unitario,
    (pp.cant * pp.valor) AS Subtotal,
    g.Fec_Env AS Fecha_Envio,
    t.NombreT AS Transportadora
FROM Pedidos p
JOIN Usuario u ON p.ID_Usuario = u.ID_Usuario
JOIN Pedi_Produc pp ON p.ID_Pedido = pp.ID_Pedido
JOIN Producto pr ON pp.ID_Producto = pr.ID_Producto
LEFT JOIN Guia_de_Envio g ON p.ID_Guia = g.ID_Guia
LEFT JOIN Transportadora t ON g.ID_Transpor = t.Id_Transpor
WHERE p.Estado = 'Activo';

/*Join Reporte de ventas*/
SELECT 
    t.NomT AS Tienda,
    COUNT(DISTINCT c.ID_Compra) AS Total_Compras,
    SUM(cp.Valor * cp.Cant) AS Ingresos_Totales,
    AVG(cp.Valor * cp.Cant) AS Promedio_Venta
FROM Tienda t
JOIN Producto p ON t.ID_Tienda = p.ID_Tienda
JOIN Comp_Produc cp ON p.ID_Producto = cp.ID_Producto
JOIN Compra c ON cp.ID_Compra = c.ID_Compra
GROUP BY t.ID_Tienda, t.NomT;

/*---------------------------------*/

/*Trigger para la actualizacion de inventario*/
DELIMITER $$
CREATE TRIGGER after_pedido_insert
AFTER INSERT ON Pedi_Produc
FOR EACH ROW
BEGIN
    -- Actualizar el inventario del producto
    UPDATE Producto p
    SET p.Cant = p.Cant - NEW.cant
    WHERE p.ID_Producto = NEW.ID_Producto;
    
    -- Registrar en tabla de ingresos (como movimiento negativo)
    INSERT INTO Ingresos (ID_Ingreso, Fecha, ID_Usuario, Obser)
    VALUES (NULL, CURDATE(), 
           (SELECT ID_Usuario FROM Pedidos WHERE ID_Pedido = NEW.ID_Pedido),
           CONCAT('Salida por pedido #', NEW.ID_Pedido));
    
    INSERT INTO Ingres_Produc (ID_Producto, ID_Ingreso, cant)
    VALUES (NEW.ID_Producto, LAST_INSERT_ID(), -NEW.cant);
END$$
DELIMITER ;

/*Trigger Descuento*/
DELIMITER //
CREATE TRIGGER `descuentos`.`descuentos_BEFORE_INSERT` BEFORE INSERT ON `Descuentos` FOR EACH ROW
BEGIN
	declare sal int;      #Devlara variable para almacenar el saldo del cliente
    -- Valida si el cliente tiene saldo suficiente para realizar la compra
	    select into sal FROM Usuarios
        where new.id_Usu = Usuarios.ID_Usuarios;
	    
        IF NEW.valor <=	sal THEN -- Verifica si el valor de la compra es menor o igual al saldo del cliente
		    update Usuario SET saldo = saldo - new.valor; -- Acstualiza  el slado del cliente
        ELSE
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'No cuentas con el saldo suficiente para la compra'; -- Lanza un error si el saldo no es suficiente
	end if;
END //
DELIMITER ;
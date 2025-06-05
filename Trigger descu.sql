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
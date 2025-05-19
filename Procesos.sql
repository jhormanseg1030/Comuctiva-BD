USE `comuctiva`;
DROP procedure IF EXISTS `comuctiva`.`Descuentos`;
;

DELIMITER $$
USE `comuctiva`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `Descuentos`(
	IN Descr VARCHAR (50),
	IN F_Des DATE,
    IN Val DECIMAL (10,2) 
)
BEGIN
	INSERT INTO Descuentos(Descripcion,Fec_Des,Valor)
    VALUES (Descr,F_Des,Val);
END$$

DELIMITER ;
;
/*Proceso de Transportaadora*/
USE `comuctiva`;
DROP procedure IF EXISTS `Transportadora`;

DELIMITER $$
USE `comuctiva`$$
CREATE PROCEDURE `Transportadora` (
    IN NombreT VARCHAR (30),
    IN Logo VARCHAR (30),
    IN Telefono VARCHAR (20),
    IN Correo VARCHAR (50),
    IN Direcc VARCHAR (50),
    IN Sitio_Web VARCHAR (50) 
)
BEGIN
	INSERT INTO Transportadora (NombreT,Logo,Telefono,Correo,Direcc,Sitio_Web)
    VALUES(NombreT,Logo,Telefono,Correo,Direcc,Sitio_Web);
END$$

DELIMITER ;



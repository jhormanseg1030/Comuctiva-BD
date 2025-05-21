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

/*Proceso de Transportadora*/
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
;

/*Proceso de Usuarios :3*/
USE `comuctiva`;
DROP procedure IF EXISTS `usuario`;

DELIMITER $$
USE `comuctiva`$$
CREATE PROCEDURE `usuario` (
IN ID_Usuario INT(10),
IN NomUsu VARCHAR(50),
IN apell1 VARCHAR (50),
IN apell2 VARCHAR(50),
IN tel1 BINARY(20),
IN tel2 BINARY(20),
IN ID_TipDoc TINYINT(3),
IN correo VARCHAR(50),
IN NumDoc VARCHAR(20),
IN Password VARCHAR(10)
)
BEGIN
Insert into usuario(ID_Usuario,NomUsu,apell1,apell2,tel1,tel2,ID_TipDoc,correo,NumDoc,Password)
VALUES (ID_Usuario,NomUsu,apell1,apell2,tel1,tel2,ID_TipDoc,correo,NumDoc,Password);
END$$

DELIMITER ;
;

/*Proceso de Pedidos*/
USE `comuctiva`;
DROP procedure IF EXISTS `Pedidos`;

DELIMITER $$
USE `comuctiva`$$
CREATE PROCEDURE `Pedidos` (
IN ID_Pedido INT(10),
IN ID_Usuario INT(10),
IN FeHor_Ped TIMESTAMP,
IN Estado INT(10),
IN ID_Guia INT(10)
)
BEGIN
INSERT INTO Pedidos (ID_Pedido,ID_Usuario,FeHor_Ped,Estado,ID_Guia)
VALUES (ID_Pedido,ID_Usuario,FeHor_Ped,Estado,ID_Guia);
END$$

DELIMITER ;
;

/*Proceso de Compra*/

USE `comuctiva`;
DROP procedure IF EXISTS `Compra`;

DELIMITER $$
USE `comuctiva`$$
CREATE PROCEDURE `Compra` (
ID_Compra INT(10),
ID_TiPago INT(10),
total DECIMAL(10,2),
Ref_Pago VARCHAR(30),
Fec_com DATE,
ID_Pedido INT(10)
)
BEGIN
INSERT INTO Compra(ID_Compra,ID_TiPago,total,Ref_Pago,Fec_com,ID_Pedido)
VALUES (ID_Compra,ID_TiPago,total,Ref_Pago,Fec_com,ID_Pedido);
END$$

DELIMITER ;
;

/*Proceso de Producto*/

USE `comuctiva`;
DROP procedure IF EXISTS `Producto`;

DELIMITER $$
USE `comuctiva`$$
CREATE PROCEDURE `Producto` (
ID_Producto INT(10),
ID_Medida INT(10),
NomProd VARCHAR(50),
Valor DECIMAL(10,2),
Cant NUMERIC(19,0),
ID_Tienda INT(10),
Imagen VARCHAR(50),
Descrip VARCHAR(50)
)
BEGIN
INSERT INTO Producto(ID_Producto,ID_Medida,NomProd,Valor,Cant,ID_Tienda,Imagen,Descrip)
VALUES (ID_Producto,ID_Medida,NomProd,Valor,Cant,ID_Tienda,Imagen,Descrip);
END$$

DELIMITER ;
;

/*Proceso de Reembolsos*/
USE `comuctiva`;
DROP procedure IF EXISTS `Reembolsos`;

DELIMITER $$
USE `comuctiva`$$
CREATE PROCEDURE `Reembolsos` (
ID_Reembolso INT(10),
Fec_Soli DATE,
Valor NUMERIC(20,2),
Motivo VARCHAR(50),
Fec_Resp DATE,
Estado VARCHAR(20),
ID_Com_Produc INT(10)
)
BEGIN
INSERT INTO Reembolsos(ID_Reembolso,Fec_Soli,Valor,Motivo,Fec_Resp,Estado,ID_Com_Produc)
VALUES (ID_Reembolso,Fec_Soli,Valor,Motivo,Fec_Resp,Estado,ID_Com_Produc);
END$$

DELIMITER ;
;

/*Proceso de Guia de envio*/
USE `comuctiva`;
DROP procedure IF EXISTS `Guia_de_Envio`;

DELIMITER $$
USE `comuctiva`$$
CREATE PROCEDURE `Guia_de_Envio` (
ID_Guia INT (10),
ID_Transpor INT (10),
Fec_Env DATE,
Obser VARCHAR(50)
)
BEGIN
INSERT INTO Guia_de_Envio(ID_Guia,ID_Transpor,Fec_Env,Obser)
VALUES (ID_Guia,ID_Transpor,Fec_Env,Obser);
END$$

DELIMITER ;
;

/*Proceso de R_Social*/
USE `comuctiva`;
DROP procedure IF EXISTS `R_Social`;

DELIMITER $$
USE `comuctiva`$$
CREATE PROCEDURE `R_Social` (
ID_Guia INT (10),
ID_Transpor INT (10),
Fec_Env DATE,
Obser VARCHAR(50)
)
BEGIN
INSERT INTO R_Social(ID_Guia,ID_Transpor,Fec_Env,Obser)
VALUES (ID_Guia,ID_Transpor,Fec_Env,Obser);
END$$

DELIMITER ;
;

USE comuctiva;
DROP procedure IF EXISTS Direcciones;

DELIMITER $$
USE comuctiva$$
CREATE PROCEDURE Direcciones (
IN ID_Direcc INT(10),
IN ID_Vias INT(10),
IN num VARCHAR(10), 
IN comple VARCHAR(50),
IN Ubi_Geo VARCHAR (20),
IN ID_Usuario INT(10),
IN ID_Barrio INT(10)
)
BEGIN
INSERT INTO Direcciones(ID_Direcc,ID_Vias,num,comple,Ubi_Geo,ID_Usuario,ID_Barrio)
VALUES (ID_Direcc,ID_Vias,num,comple,Ubi_Geo,ID_Usuario,ID_Barrio);
END$$

DELIMITER ;

USE comuctiva;
DROP procedure IF EXISTS Barrio;

DELIMITER $$
USE comuctiva$$
CREATE PROCEDURE Barrio (
IN ID_Barrio INT(10),
IN Nom VARCHAR(50),
IN ID_Muni INT(10)
)
BEGIN
INSERT INTO Barrio(ID_Barrio,Nom,ID_Muni)
VALUES (ID_Barrio,Nom,ID_Muni);
END$$

DELIMITER ;

USE comuctiva;
DROP procedure IF EXISTS Tienda;

DELIMITER $$
USE comuctiva$$
CREATE PROCEDURE Tienda (
IN ID_Tienda INT(10),
IN ID_Direcc INT(10),
IN NomT VARCHAR(50),
IN Logo VARCHAR(50),
IN ID_Usuario INT(10),
IN ID_R_Social INT(10)
)
BEGIN
INSERT INTO Tienda(ID_Tienda,ID_Direcc,NomT,Logo,ID_Usuario,ID_R_Social)
VALUES (ID_Tienda,ID_Direcc,NomT,Logo,ID_Usuario,ID_R_Social);
END$$

DELIMITER ;

USE comuctiva;
DROP procedure IF EXISTS ` Ingres_Produc`;

DELIMITER $$
USE comuctiva$$
CREATE PROCEDURE ` Ingres_Produc` (
ID_Producto INT(10),
ID_Ingreso INT(10),
cant NUMERIC (20,2)
)
BEGIN
INSERT INTO Ingres_Produc (ID_Producto,ID_Ingreso,cant)
VALUES (ID_Producto,ID_Ingreso,cant);
END$$

DELIMITER ;


USE comuctiva;
DROP procedure IF EXISTS Pedi_Produc;
								
DELIMITER $$
USE comuctiva$$
CREATE PROCEDURE Pedi_Produc (
IN ID_Producto INT(10),
IN ID_Medida INT(10),
IN NomProd VARCHAR(50),
IN valor DECIMAL(30,0),
IN cant NUMERIC(10,2)
)
BEGIN
INSERT INTO Pedi_Produc(ID_Producto,ID_Medida,NomProd,valor,cant)
VALUES (ID_Producto,ID_Medida,NomProd,valor,cant);
END$$

DELIMITER ;

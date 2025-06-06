/*Proceso de Descuentos*/
USE `comuctiva`;
DROP procedure IF EXISTS `comuctiva`.`Descuentos`;
;
																										
DELIMITER $$
USE `comuctiva`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `Descuentos`(
	IN Descr VARCHAR (50),
    IN Valor1 DECIMAL (10,2)
)
BEGIN
	DECLARE valor1 Int;
	Set valor1 = fun_desc(descu);
	INSERT INTO Descuentos(Descripcion,Fec_Des,Valor1)
    VALUES (Descr,NOW(),Valor1);
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

/*Proceso de Usuarios*/
USE `comuctiva`;
DROP procedure IF EXISTS `Usuario`;

DELIMITER $$
USE `comuctiva`$$
CREATE PROCEDURE `Usuario` (
IN NomUsu VARCHAR(50),
IN apell1 VARCHAR (50),
IN apell2 VARCHAR(50),
IN tel1 NUMERIC(20),
IN tel2 NUMERIC(20),
IN ID_TipDocu TINYINT(3),
IN correo VARCHAR(50),
IN NumDoc VARCHAR(20),
IN pas VARCHAR(10)
)
BEGIN
INSERT INTO Usuario (NomUsu,apell1,apell2,tel1,tel2,ID_TipDocu,correo,NumDoc,Password)
VALUES (NomUsu,apell1,apell2,tel1,tel2,ID_TipDocu,correo,NumDoc,AES_ENCRYPT(pas,'1234'));
END$$

DELIMITER ;
;

/*Proceso de Pedidos*/
USE `comuctiva`;
DROP procedure IF EXISTS `Pedidos`;

DELIMITER $$
USE `comuctiva`$$
CREATE PROCEDURE `Pedidos` (
IN ID_Usuario INT(10),
IN Estado VARCHAR(20),
IN ID_Guia INT(10)
)
BEGIN

INSERT INTO Pedidos (ID_Usuario,FeHor_Ped,ID_Estado,ID_Guia)
VALUES (ID_Usuario,NOW(),Estado,ID_Guia);
END$$

DELIMITER ;
;

/*Proceso de Compra*/

USE `comuctiva`;
DROP procedure IF EXISTS `Compra`;

DELIMITER $$
USE `comuctiva`$$
CREATE PROCEDURE `Compra` (
ID_TiPago INT(10),
total DECIMAL(10,2),
Ref_Pago VARCHAR(30),
ID_Pedido INT(10)
)
BEGIN
INSERT INTO Compra(ID_TiPago,total,Ref_Pago,Fec_com,ID_Pedido)
VALUES (ID_TiPago,total,Ref_Pago,NOW(),ID_Pedido);
END$$

DELIMITER ;
;

/*Proceso de Producto*/

USE `comuctiva`;
DROP procedure IF EXISTS `Producto`;

DELIMITER $$
USE `comuctiva`$$
CREATE PROCEDURE `Producto` (
ID_Medida INT(10),
NomProd VARCHAR(50),
Valor DECIMAL(10,2),
Cant NUMERIC(19,0),
ID_Tienda INT(10),
Imagen VARCHAR(100),
Descrip VARCHAR(50)
)
BEGIN
INSERT INTO Producto(ID_Medida,NomProd,Valor,Cant,ID_Tienda,Imagen,Descrip)
VALUES (ID_Medida,NomProd,Valor,Cant,ID_Tienda,Imagen,Descrip);
END$$

DELIMITER ;
;

/*Proceso de Reembolsos*/
USE `comuctiva`;
DROP procedure IF EXISTS `Reembolsos`;

DELIMITER $$
USE `comuctiva`$$
CREATE PROCEDURE `Reembolsos` (
Valor NUMERIC(20,2),
Motivo VARCHAR(100),
Estado VARCHAR(20),
ID_Com_Produc INT(10)
)
BEGIN
INSERT INTO Reembolsos(Fec_Soli,Valor,Motivo,Fec_Resp,Estado,ID_Com_Produc)
VALUES (NOW(),Valor,Motivo,NOW(),Estado,ID_Com_Produc);
END$$

DELIMITER ;
;

/*Proceso de Guia de envio*/
USE `comuctiva`;
DROP procedure IF EXISTS `Guia_de_Envio`;

DELIMITER $$
USE `comuctiva`$$
CREATE PROCEDURE `Guia_de_Envio` (
ID_Transpor INT (10),
Obser VARCHAR(50)
)
BEGIN

INSERT INTO Guia_de_Envio(ID_Transpor,Fec_Env,ID_Obser)
VALUES (ID_Transpor,NOW(),Obser);

END$$

DELIMITER ;
;

/*Proceso de R_Social*/
USE `comuctiva`;
DROP procedure IF EXISTS `comuctiva`.`R_Social`;

DELIMITER $$
USE `comuctiva`$$
CREATE PROCEDURE R_Social(
    IN param_ID_R_Social INT(10),  
    IN param_Nombre VARCHAR(50),
    IN param_NIT VARCHAR(20),
    IN param_Sucur VARCHAR(50),
    IN param_ID_Usuario INT(10)
)
BEGIN
   
    UPDATE R_Social 
    SET Nombre = param_Nombre,
        NIT = param_NIT,
        Sucur = param_Sucur,
        ID_Usuario = param_ID_Usuario
    WHERE ID_R_Social = param_ID_R_Social;
    
  
    IF ROW_COUNT() = 0 THEN
        INSERT INTO R_Social(ID_R_Social, Nombre, NIT, Sucur, ID_Usuario)
        VALUES (param_ID_R_Social, param_Nombre, param_NIT, param_Sucur, param_ID_Usuario);
    END IF;
END$$

/*Proceso de Direcciones*/
USE comuctiva;
DROP procedure IF EXISTS Direcciones;

DELIMITER $$
USE comuctiva$$
CREATE PROCEDURE Direcciones (
IN ID_Vias INT(10),
IN num VARCHAR(10), 
IN comple VARCHAR(50),
IN Ubi_Geo VARCHAR (20),
IN ID_Usuario INT(10),
IN ID_Barrio INT(10)
)
BEGIN
INSERT INTO Direcciones(ID_Vias,num,comple,Ubi_Geo,ID_Usuario,ID_Barrio)
VALUES (ID_Vias,num,comple,Ubi_Geo,ID_Usuario,ID_Barrio);
END$$

DELIMITER ;

/*Proceso de Barrio*/

USE comuctiva;
DROP procedure IF EXISTS Barrio;

DELIMITER $$
USE comuctiva$$
CREATE PROCEDURE Barrio (
IN ID_Barr_Vere INT(10),
IN Nom VARCHAR(50),
IN ID_Muni INT(10)
)
BEGIN
INSERT INTO Barrio(ID_Barr_Vere,Nom,ID_Muni)
<<<<<<< HEAD
VALUES (Barr_Vere,Nom,ID_Muni);
=======
VALUES (ID_Barr_Vere,Nom,ID_Muni);
>>>>>>> d4a21ebe60088b5f8596b54b6a7f4a674f4f9c94
END$$

DELIMITER ;

/*Proceso de Tienda*/

USE comuctiva;
DROP procedure IF EXISTS Tienda;

DELIMITER $$
USE comuctiva$$
CREATE PROCEDURE Tienda (
IN ID_Direcc INT(10),
IN NomT VARCHAR(50),
IN Logo VARCHAR(50),
IN ID_Usuario INT(10),
IN ID_R_Social INT(10)
)
BEGIN
INSERT INTO Tienda(ID_Direcc,NomT,Logo,ID_Usuario,ID_R_Social)
VALUES (ID_Direcc,NomT,Logo,ID_Usuario,ID_R_Social);
END$$

DELIMITER ;

/*Proceso de Ingres_Produc*/
USE comuctiva;
DROP procedure IF EXISTS ` Ingres_Produc`;

DELIMITER $$
USE comuctiva$$
CREATE PROCEDURE ` Ingres_Produc`(
ID_Producto INT(10),
ID_Ingreso INT(10),
cant NUMERIC (20,2)
)
BEGIN
INSERT INTO Ingres_Produc (ID_Producto,ID_Ingreso,cant)
VALUES (ID_Producto,ID_Ingreso,cant);
END$$

DELIMITER ;

/*Proceso de Pedi_Produc*/
USE comuctiva;
DROP procedure IF EXISTS Pedi_Produc;
								
DELIMITER $$
USE comuctiva$$
CREATE PROCEDURE Pedi_Produc (
IN ID_Producto INT(10),
IN ID_Pedido INT(10),
IN cant NUMERIC(30,0),
IN valor DECIMAL(10,3)
)
BEGIN
INSERT INTO Pedi_Produc(ID_Producto,ID_Pedido,cant,valor)
VALUES (ID_Producto,ID_Pedido,cant,valor);
END$$

DELIMITER ;

/*Comp_Produc*/

USE `comuctiva`;
DROP procedure IF EXISTS `Comp_Produc`;

DELIMITER $$
USE `comuctiva`$$
CREATE PROCEDURE `Comp_Produc` (
	IN ID_Compra INT,
    IN ID_Producto INT,
    IN Cant NUMERIC (19,2),
    IN Valor DECIMAL (10,2)
)
BEGIN
	INSERT INTO Comp_Produc (ID_Compra,ID_Producto,Cant,Valor)
    VALUES (ID_Compra,ID_Producto,Cant,Valor);
END$$

DELIMITER ;
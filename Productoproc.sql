CREATE DEFINER=`root`@`localhost` PROCEDURE `Producto`(
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
END
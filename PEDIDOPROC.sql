CREATE DEFINER=`root`@`localhost` PROCEDURE `Pedidos`(
IN ID_Pedido INT(10),
IN ID_Usuario INT(10),
IN FeHor_Ped TIMESTAMP,
IN Estado INT(10),
IN ID_Guia INT(10)
)
BEGIN
INSERT INTO Pedidos (ID_Pedido,ID_Usuario,FeHor_Ped,Estado,ID_Guia)
VALUES (ID_Pedido,ID_Usuario,FeHor_Ped,Estado,ID_Guia);
END
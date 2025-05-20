CREATE DEFINER=`root`@`localhost` PROCEDURE `Compra`(
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
END
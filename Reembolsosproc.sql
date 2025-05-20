CREATE DEFINER=`root`@`localhost` PROCEDURE `Reembolsos`(
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
END
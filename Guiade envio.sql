CREATE DEFINER=`root`@`localhost` PROCEDURE `Guia_de_Envio`(
ID_Guia INT (10),
ID_Transpor INT (10),
Fec_Env DATE,
Obser VARCHAR(50)
)
BEGIN
INSERT INTO Guia_de_Envio(ID_Guia,ID_Transpor,Fec_Env,Obser)
VALUES (ID_Guia,ID_Transpor,Fec_Env,Obser);
END
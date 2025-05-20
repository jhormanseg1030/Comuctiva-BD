
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
END


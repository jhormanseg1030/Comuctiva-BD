CALL Usuario ("Luisa","Fernanda","Ramoz","3156578900","3103746678",1,"Luisafernanda225@gmail.com","5207267708","1234");
CALL Usuario ("Juan","Camilo","Chon","3118905612","3128110025",4,"Juancamilo546@gmail.com","10124658905","678909");
CALL Usuario ("Brandon","Ramirez","Patiño","3108117232","3158990043",1,"Brandonramirez@gmail.com","10114567823","476589");
CALL Usuario ("Maria","Talero","Castelblanco","3136451239","3107348097",2,"Mariatalero@gmail.com","10114567823","67436798");

CALL Usuario_Nuevo(100, 'Pepito', 'miPassword123', 'pepito@mail.com', 'Pérez', '123456', NULL, 1,'clave_super_secreta_2024');

SELECT Id_Usu,nom,AES_DECRYPT(Password, 'mi_clave_secreta_2024') AS Password_Original,Password AS Password_Encriptada
FROM Usuarios;
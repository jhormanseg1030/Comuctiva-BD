CALL Usuario ("Luisa","Fernanda","Ramoz","3156578900","3103746678",1,"Luisafernanda225@gmail.com","5207267708","1234");
CALL Usuario ("Juan","Camilo","Chon","3118905612","3128110025",4,"Juancamilo546@gmail.com","10124658905","678909");
CALL Usuario ("Brandon","Ramirez","Patiño","3108117232","3158990043",1,"Brandonramirez@gmail.com","10114567823","476589");
CALL Usuario ("Maria","Talero","Castelblanco","3136451239","3107348097",2,"Mariatalero@gmail.com","10114567823","67436798");

/*transportadora*/
CALL Transportadora('servientrega', 'fedex', '123456789', 'contacto@servientrega.com', 'Calle 123', 'www.servientrega.com');
CALL Transportadora('servientrega', 'fedex', '567891234', 'contacto@servientrega.com', 'Calle 220', 'www.servientrega.com');
CALL Transportadora('servientrega', 'fedex', '789456213', 'contacto@servientrega.com', 'Calle 127', 'www.servientrega.com');
CALL Transportadora('servientrega', 'fedex', '555444252', 'contacto@servientrega.com', 'Calle 100', 'www.servientrega.com');
CALL Transportadora('servientrega', 'fedex', '121212121', 'contacto@servientrega.com', 'Calle 150', 'www.servientrega.com');
CALL Transportadora('servientrega', 'fedex', '018005005', 'contacto@servientrega.com', 'Calle 215', 'www.servientrega.com');

/*Guia de envio*/
CALL Guia_de_Envio(1,'2025-05-20','delicado');
CALL Guia_de_Envio(1,'2025-06-13','peligro');
CALL Guia_de_Envio(1,'2025-06-15','fragil');
CALL Guia_de_Envio(1,'2025-07-14','ligero');
CALL Guia_de_Envio(1,'2025-08-10','pesado');
CALL Guia_de_Envio(1,'2025-09-02','delicado');

/*R_Social*/
CALL R_Social('don alejo','912','Bogota','1');
CALL R_Social('antonio','900','soacha','2');
CALL R_Social('jhorman','800','cajica','3');
CALL R_Social('julio','890','sibate','4');
CALL R_Social('tulio','901','aguadedios','5');
CALL R_Social('san bernardo','811','fusa','6');

/*Tienda*/
CALL Tienda(1,'tiendas don luis','fedex','1','1');
CALL Tienda(1,'tiendas don luis','fedex','1','1');
CALL Tienda(1,'tiendas don luis','fedex','1','1');
CALL Tienda(1,'tiendas don luis','fedex','1','1');
CALL Tienda(1,'tiendas don luis','fedex','1','1');
CALL Tienda(1,'tiendas don luis','fedex','1','1');

select * from R_Social;

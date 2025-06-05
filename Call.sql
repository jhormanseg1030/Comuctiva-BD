-- CALL USUARIOS
CALL Usuario ("Luisa","Fernanda","Ramoz","3156578900","3103746678",1,"Luisafernanda225@gmail.com","5207267708","1234");
CALL Usuario ("Juan","Camilo","Chon","3118905612","3128110025",4,"Juancamilo546@gmail.com","10124658905","678909");
CALL Usuario ("Brandon","Ramirez","Patiño","3108117232","3158990043",1,"Brandonramirez@gmail.com","10114567823","476589");
CALL Usuario ("Maria","Talero","Castelblanco","3136451239","3107348097",2,"Mariatalero@gmail.com","10114567823","67436798");
select *from Usuario;

-- CALL Barrio
CALL Barrio (3,"bohio",25817);
CALL Barrio (1,"Flandes",25335);
CALL Barrio (1,"Altos del Pedregal",25851);
CALL Barrio (2,"Chaleche",25736); 
select *from Barrio;
-- TRUNCATE Barrio;
-- 

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
CALL R_Social(1,'don alejo','912','Bogota',1);
CALL R_Social(2,'antonio','900','soacha',2);
CALL R_Social(3,'jhorman','800','cajica',3);
CALL R_Social(4,'julio','890','sibate',4);
select *from R_Social;

/*Tienda*/
CALL Tienda(1,'tiendas don luis','fedex',1,1);
select *from Tienda;

-- ProductoDireccionesDirecciones
CALL Producto(3,'Papa','2000','3',1,'src="https://www.herbazest.com/imgs/0/a/c/451775/papa.jpg"','papa pastusa fresca y lavada');
select *from Producto;

-- Direcciones
CALL Direcciones (3,'34','b sur','40°4246″N,74°021',2,2);
CALL Direcciones (1,'36','diagonal 38',' 40°4246″N,74°021',2,2);
select *from Direcciones;

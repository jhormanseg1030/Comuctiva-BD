-- CALL USUARIOS
CALL Usuario ("Luisa","Fernanda","Ramoz","3156578900","3103746678",1,"Luisafernanda225@gmail.com","5207267708","1234");
CALL Usuario ("Juan","Camilo","Chon","3118905612","3128110025",4,"Juancamilo546@gmail.com","10124658905","678909");
CALL Usuario ("Brandon","Ramirez","Patiño","3108117232","3158990043",1,"Brandonramirez@gmail.com","10114567823","476589");
CALL Usuario ("Maria","Talero","Castelblanco","3136451239","3107348097",2,"Mariatalero@gmail.com","10114567823","67436798");
select *from Usuario;

/*Pedidos*/
CALL Pedidos (2,2,2);
CALL Pedidos (2,3,1);
select *from Pedidos;

-- Descuentos
CALL Descuentos ("¡Obtén un 20% de descuento en tu primera compra!","150000");
select *from Descuentos;

-- CALL Barrio
CALL Barrio (3,"bohio",25817);
CALL Barrio (1,"Flandes",25335);
CALL Barrio (1,"Altos del Pedregal",25851);
CALL Barrio (2,"Chaleche",25736); 
select *from Barrio;



/*transportadora*/
CALL Transportadora('servientrega', 'fedex', '123456789', 'contacto@servientrega.com', 'Calle 123', 'www.servientrega.com');
CALL Transportadora('servientrega', 'fedex', '567891234', 'contacto@servientrega.com', 'Calle 220', 'www.servientrega.com');
CALL Transportadora('servientrega', 'fedex', '789456213', 'contacto@servientrega.com', 'Calle 127', 'www.servientrega.com');
CALL Transportadora('servientrega', 'fedex', '555444252', 'contacto@servientrega.com', 'Calle 100', 'www.servientrega.com');
CALL Transportadora('servientrega', 'fedex', '121212121', 'contacto@servientrega.com', 'Calle 150', 'www.servientrega.com');
CALL Transportadora('servientrega', 'fedex', '018005005', 'contacto@servientrega.com', 'Calle 215', 'www.servientrega.com');
select*from Transportadora;

/*Guia de envio*/
CALL Guia_de_Envio(1,1);
CALL Guia_de_Envio(2,2);
CALL Guia_de_Envio(1,3);
CALL Guia_de_Envio(1,4);
CALL Guia_de_Envio(1,5);
CALL Guia_de_Envio(1,2);
SELECT * FROM Guia_de_Envio;
TRUNCATE TABLE Guia_de_Envio;


/*ALTER TABLE pedidos DROP CONSTRAINT FK_Usuario;
ALTER TABLE pedidos DROP CONSTRAINT FK_Guia_de_Envio;
ALTER TABLE Pedi_Produc DROP CONSTRAINT FK_Pedi;
TRUNCATE TABLE Pedidos;

-- pedi_produc
-- Agregar productos (total = 80,000)
INSERT INTO Pedi_Produc ( ID_Product,ID_Pedido,cant, valor) VALUES
(1,5,2, 30000), -- Producto sin descuento (60,000)
(1,5,1, 50000); -- Producto con descuento (pero no aplica por monto bajo)


SELECT *, valor*cant AS subtotal FROM Pedi_Produc ;
-- Verificar
SELECT * FROM Pedi_Produc;*/


-- Descuentos
/*CALL Descuentos ("¡Obtén un 20% de descuento en tu primera compra!","150000");
SELECT fun_desc(160000); -- Debería devolver 10
select *from Descuentos;*/


-- -- Direcciones
CALL Direcciones (3,'34','b sur','40°4246″N,74°021',2,2);
CALL Direcciones (1,'36','diagonal 38',' 40°4246″N,74°021',2,2);
select *from Direcciones;


/*R_Social*/
CALL R_Social(1,'don alejo','912','Bogota',1);
CALL R_Social(2,'antonio','900','soacha',2);
CALL R_Social(3,'jhorman','800','cajica',3);
CALL R_Social(4,'julio','890','sibate',4);
select *from R_Social;



/*Tienda*/
CALL Tienda(1,'tiendas don luis','fedex',1,1);
select *from Tienda;

-- Producto
CALL Producto(3,'Papa','2000','3',1,'src="https://www.herbazest.com/imgs/0/a/c/451775/papa.jpg"','papa pastusa fresca y lavada');
select *from Producto;


/*Compra*/
CALL Compra (2,"50000","Confirmado",1);
Select * From Compra;

/*Com_Pro*/
CALL Comp_Produc (1,1,"15","20000");
SELECT * FROM Comp_Produc;

/*Remmbolsos*/
CALL Reembolsos ("50000","El producto llego dañado, y por lo que pague se me hace caro",1,2);
SELECT * FROM Reembolsos;


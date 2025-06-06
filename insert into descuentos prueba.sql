-- Insertar productos de prueba si no existen
INSERT INTO Producto (ID_Producto, NomProd, Valor) VALUES 
(101, 'Producto con descuento 10%', 50000),
(102, 'Producto con descuento 15%', 80000),
(103, 'Producto sin descuento', 30000);

select * from Producto;

SELECT fun_desc(160000); -- Debería devolver 10

-- Verificar
SELECT *, valor*cant AS subtotal FROM Pedi_Produc ;

-- Asociar descuentos a productos
INSERT INTO Produc_Desc (ID_Producto, ID_Descu) VALUES
(100, 100), -- Producto 100 con 10% descuento
(101, 101); -- Producto 101 con 15% descuento

-- Crear pedido
INSERT INTO Pedidos ( Estado) VALUES ( 'En proceso');

-- Agregar productos (total = 80,000)
INSERT INTO Pedi_Produc ( cant, valor) VALUES
( 2, 30000), -- Producto sin descuento (60,000)
( 1, 50000); -- Producto con descuento (pero no aplica por monto bajo)

-- Verificar
SELECT * FROM Pedi_Produc;
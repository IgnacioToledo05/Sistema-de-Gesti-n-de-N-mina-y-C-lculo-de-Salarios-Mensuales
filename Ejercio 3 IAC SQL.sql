3. Concatenar el nombre del producto con su precio, mostrando el resultado en una
sola columna.

--Crear la base de datos y usarla.
CREATE TABLE mobile_bd;
USE mobile_bd;

-- 1. Crear el nombre del producto.
CREATE TABLE NombredelProducto(
     id INT AUTO_INCREMENT PRIMARY KEY,
   Producto VARCHAR(255),
   Precio INT --Se agrega a la columna Precio
);

-- 2.Insertar el precio del producto. 
INSERT INTO NombredelProducto(producto,Precio)
VALUES
('Agua grande',1500),
('Agua chica',1200),
('Jugo saborizado',2500);

-- 4. Concatenar producto con precio en una sola columna
SELECT CONCAT(producto, ' - ', Precio) AS Resultado
FROM NombredelProducto;
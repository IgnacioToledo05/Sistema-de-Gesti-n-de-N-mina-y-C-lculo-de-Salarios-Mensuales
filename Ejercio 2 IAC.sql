/*2. Calcular el salario mensual de cada empleado suponiendo que el salario en la tabla
es el salario diario.*/


-- 1. Crear la tabla empleados si no existe
CREATE TABLE IF NOT EXISTS empleados (
    empleado_id INT PRIMARY KEY,
    nombre VARCHAR(100),
    salario_diario DECIMAL(10,2)
);

-- 2. Insertar algunos empleados de ejemplo
INSERT INTO empleados (empleado_id, nombre, salario_diario) 
VALUES 
(1, 'Juan Pérez', 500),
(2, 'María López', 600),
(3, 'Carlos Gómez', 550)
ON DUPLICATE KEY UPDATE salario_diario = VALUES(salario_diario);

-- 3. Crear la tabla para almacenar los salarios mensuales
CREATE TABLE IF NOT EXISTS salarios_mensuales (
    empleado_id INT PRIMARY KEY,
    salario_mensual DECIMAL(10,2),
    FOREIGN KEY (empleado_id) REFERENCES empleados(empleado_id)
);

-- 4. Insertar los salarios mensuales calculados en la nueva tabla
INSERT INTO salarios_mensuales (empleado_id, salario_mensual)
SELECT empleado_id, salario_diario * 30 
FROM empleados
ON DUPLICATE KEY UPDATE salario_mensual = VALUES(salario_mensual);

-- 5. Consultar los salarios mensuales calculados
SELECT e.nombre, s.salario_mensual 
FROM empleados e
JOIN salarios_mensuales s ON e.empleado_id = s.empleado_id;
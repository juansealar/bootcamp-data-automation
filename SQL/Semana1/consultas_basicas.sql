-- Mostrar todos los clientes
SELECT * FROM Clientes;

-- Mostrar únicamente los nombres
SELECT Nombre
FROM Clientes;

-- Clientes de Medellín
SELECT *
FROM Clientes
WHERE Ciudad = 'Medellín';

-- Clientes mayores de 24 años
SELECT *
FROM Clientes
WHERE Edad > 24;

-- Ordenar por edad descendente
SELECT *
FROM Clientes
ORDER BY Edad DESC;

-- Cantidad total de clientes
SELECT COUNT(*) AS TotalClientes
FROM Clientes;

-- Edad promedio
SELECT AVG(Edad) AS EdadPromedio
FROM Clientes;

-- Edad máxima y mínima
SELECT
    MAX(Edad) AS EdadMaxima,
    MIN(Edad) AS EdadMinima
FROM Clientes;

-- Cantidad de clientes de Medellín
SELECT COUNT(*) AS ClientesMedellin
FROM Clientes
WHERE Ciudad = 'Medellín';
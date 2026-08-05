--Clientes entre 20 y 30 años--


SELECT *
FROM Clientes 
WHERE Edad BETWEEN 20 AND 30;


--Clientes de Medellín o Cali--

SELECT * 
FROM Clientes
WHERE Ciudad = 'Medellín' 
OR Ciudad='Cali' 

--Clientes que no viven en Bogotá--

SELECT *
FROM Clientes
WHERE NOT Ciudad = 'Bogotá'

--Clientes cuyo nombre comienza con "P"--
SELECT * 
FROM Clientes
WHERE Nombre LIKE 'P%'

--Clientes cuyo nombre termina en "a"--
SELECT * 
FROM Clientes
WHERE Nombre LIKE '%a'

--Clientes cuya ciudad esté entre Medellín y Barranquilla--

SELECT *
FROM Clientes
WHERE Ciudad IN ('Medellín','Barranquilla')

--Clientes mayores de 20 años que vivan en medellin--
SELECT *
FROM Clientes
WHERE Edad > 20
AND Ciudad = 'Medellín'


--Clientes que vivan en medellin o barranquilla y tienen mas de 20 años--
SELECT COUNT(*) AS Total_Clientes
FROM Clientes
WHERE Edad > 20 
AND Ciudad = 'Medellín' 
OR Ciudad = 'Barranquilla'

/*Muestra únicamente el nombre y la ciudad de los clientes cuya edad esté entre 20 y 30 años,
ordenados por nombre de la A a la Z.*/

SELECT Nombre,Ciudad
FROM Clientes
WHERE Edad BETWEEN 20 AND 30
ORDER BY Nombre


/*¿Cuántos clientes tienen un nombre que termina en "a" y viven en Medellín o Bogotá?*/

SELECT COUNT(*) AS Clientes_terminados_en_a_Medellin_Bogota
FROM Clientes
WHERE Nombre LIKE '%a'
AND Ciudad IN ('Medellín','Bogotá')

/*--COMPARACION: ES UNA OPERACION ENTRE DOS VALORES;/

--devuelve
--true=1
--false=0
WHERE= cuando, donde 



SELECT correo,edad FROM contactos WHERE edad=40;

SELECT * from contactos ORDER BY apellido,nombre;*/


/* listar los contactos que deban mas de 2000 en 2025*/

SELECT * FROM contactos_deudas WHERE deuda2025 > 20000;

/* listar los contactos que deban mas de 2000 en ämbos años*/
/*se pueden unir mas de una condicion con los operadores logicos*/
/* AND (Y ademas..) -> devolver el resgistro solo cuando todas las condicones se cumplan*/
/* OR (o ademas..) -> devuelve el resgistro cuando algunas o ambas las condicones se cumplan*/

/*listar todos los contactos que deban mas de 2000 en ambos años*/

SELECT * FROM contactos_deudas WHERE deuda2024>2024 AND deuda2025>2000;

/*listar todos los contactos que deban mas de 2000 en algun año*/
SELECT * FROM contactos_deudas WHERE deuda2024>2024 OR deuda2025>2000;

/*listar todos los contactos que deban entre 1000 y 2000 en 2024*/
SELECT * FROM contactos_deudas WHERE deuda2024>2024 AND deuda2025>2000;

select * from contactos where NOT(edad>50);  


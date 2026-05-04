UPDATE empleado 
SET salario = salario * 1.05 
WHERE puesto = 'Analista';

SELECT nombre, puesto, salario 
FROM empleado 
WHERE puesto = 'Analista';

DELETE FROM empleado 
WHERE id = 3;

SELECT * FROM empleado;
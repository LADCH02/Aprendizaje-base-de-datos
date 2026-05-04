SELECT nombre, puesto, salario 
FROM empleado 
ORDER BY salario DESC 
LIMIT 3;

SELECT AVG(salario) AS salario_promedio FROM empleado;

SELECT puesto, COUNT(*) AS cantidad_empleados 
FROM empleado 
GROUP BY puesto;
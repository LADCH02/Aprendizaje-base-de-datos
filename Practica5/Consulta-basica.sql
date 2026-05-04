SELECT nombre, salario 
FROM empleado 
WHERE salario >= 40000;

SELECT nombre, puesto, salario 
FROM empleado 
WHERE (salario >= 40000 AND puesto = 'Analista') OR puesto = 'Gerente';
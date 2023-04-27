SELECT f.nome, f.salario, f.cod_depto
FROM funcionario f 
JOIN departamento d ON f.cod_depto = d.codigo 
WHERE f.codigo NOT IN (
    SELECT codigo 
    FROM departamento 
    WHERE cod_gerente IS NOT NULL
) 
ORDER BY f.cod_depto;

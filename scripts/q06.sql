SELECT f.nome, f.salario, d.descricao
FROM funcionario f 
LEFT JOIN departamento d ON f.cod_depto = d.codigo 
ORDER BY f.nome;
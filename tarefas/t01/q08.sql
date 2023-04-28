CREATE VIEW num_projetos AS
SELECT cod_depto, count(*) AS num_projetos
FROM projeto
GROUP BY cod_depto;

CREATE VIEW nome_gerente AS
SELECT d.codigo, d.descricao, f.nome AS gerente_nome
FROM departamento d
LEFT JOIN funcionario f ON d.cod_gerente = f.codigo;


SELECT d.descricao AS departamento, g.gerente_nome AS gerente, p.num_projetos AS num_projetos
FROM departamento d
LEFT JOIN nome_gerente g ON d.codigo = g.codigo
LEFT JOIN num_projetos p ON d.codigo = p.cod_depto;
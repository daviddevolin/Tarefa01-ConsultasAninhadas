CREATE VIEW atividades_projeto_count AS
SELECT
  ap.cod_projeto,
  COUNT(DISTINCT ap.cod_atividade) AS qtde_atividades,
  COUNT(DISTINCT a.cod_responsavel) AS qtde_responsaveis
FROM
  atividade_projeto ap
  JOIN atividade a ON a.codigo = ap.cod_atividade
GROUP BY
  ap.cod_projeto;

CREATE VIEW projeto_responsavel AS
SELECT
  p.nome AS nome_projeto,
  d.descricao AS nome_departamento,
  f.nome AS nome_responsavel,
  apc.qtde_atividades,
  apc.qtde_responsaveis
FROM
  projeto p
  JOIN departamento d ON p.cod_depto = d.codigo
  JOIN funcionario f ON p.cod_responsavel = f.codigo
  LEFT JOIN atividades_projeto_count apc ON p.codigo = apc.cod_projeto;
  
 SELECT
  pr.nome_projeto,
  pr.nome_responsavel,
  pr.qtde_atividades,
  pr.qtde_responsaveis
FROM
  projeto_responsavel pr;


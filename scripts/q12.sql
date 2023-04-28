CREATE VIEW projeto_atividade_view AS
SELECT 
  prj.codigo AS codigo_projeto,
  prj.nome AS nome_projeto,
  prj.data_inicio AS data_inicio_projeto,
  prj.data_fim AS data_fim_projeto,
  atv.codigo AS codigo_atividade,
  atv.descricao AS descricao_atividade,
  atv.data_inicio AS data_inicio_atividade,
  atv.data_fim AS data_fim_atividade
FROM 
  projeto prj
  JOIN atividade_projeto ap ON prj.codigo = ap.cod_projeto
  JOIN atividade atv ON ap.cod_atividade = atv.codigo;
  
  SELECT 
  pv.nome_projeto AS projeto,
  pv.data_inicio_projeto AS inicio_projeto,
  pv.data_fim_projeto AS fim_projeto,
  pv.descricao_atividade AS descricao_atividade,
  pv.data_inicio_atividade AS inicio_atividade,
  pv.data_fim_atividade AS fim_atividade
FROM 
  projeto_atividade_view pv;

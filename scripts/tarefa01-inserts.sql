  
 -- Inserindo dados na tabela departamento
INSERT INTO departamento (codigo, descricao, cod_gerente) VALUES 
(1, 'Departamento de Vendas', NULL),
(2, 'Departamento de Desenvolvimento', NULL),
(3, 'Departamento de Marketing', NULL),
(4, 'Departamento Financeiro', NULL),
(5, 'Departamento de Recursos Humanos', NULL);

-- Inserindo dados na tabela funcionario
INSERT INTO funcionario (codigo, nome, sexo, dt_nasc, salario, cod_depto) VALUES 
(1, 'João Silva', 'M', '1990-05-15', 5000.00, 4),
(2, 'Maria Santos', 'F', '1985-10-20', 6500.00, 1),
(3, 'Pedro Oliveira', 'M', '1988-03-08', 7000.00, 2),
(4, 'Ana Costa', 'F', '1993-07-22', 8500.00, 3),
(5, 'Lucas Souza', 'M', '1995-01-10', 4500.00, 5),
(6, 'Maria Silva', 'F', '1990-06-15', 4500.00, 1),
(7, 'João Santos', 'M', '1985-03-12', 3900.00, 1),
(8, 'Ana Paula', 'F', '1992-09-22', 5200.00, 2),
(9, 'Pedro Oliveira', 'M', '1988-11-05', 4800.00, 2),
(10, 'Carla Souza', 'F', '1995-02-28', 4200.00, 3);


-- Inserindo dados na tabela projeto
INSERT INTO projeto (codigo, nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim) VALUES 
(1, 'Projeto de Vendas', 'Projeto para aumentar as vendas da empresa', 1, 2, '2022-01-01', '2022-06-30'),
(2, 'Projeto de Desenvolvimento', 'Projeto para desenvolver um novo produto', 2, 3, '2022-02-01', '2022-12-31'),
(3, 'Projeto de Marketing', 'Projeto para divulgação da empresa', 3, 4, '2022-03-01', '2022-09-30'),
(4, 'Projeto Financeiro', 'Projeto para otimização dos processos financeiros', 4, 1, '2022-04-01', '2022-11-30'),
(5, 'Projeto de Recursos Humanos', 'Projeto para aprimorar a gestão de pessoas', 5, 5, '2022-05-01', '2022-08-31');

-- Inserindo dados na tabela atividade
INSERT INTO atividade (codigo, nome, descricao, cod_responsavel, data_inicio, data_fim) VALUES 
(1, 'Atividade 1', 'Realizar reuniões com os clientes', 2, '2022-01-01', '2022-03-31'),
(2, 'Atividade 2', 'Desenvolver o protótipo do novo produto', 3, '2022-02-01', '2022-08-31'),
(3, 'Atividade 3', 'Elaborar campanhas de marketing', 4, '2022-03-01', '2022-05-31'),
(4, 'Atividade 4', 'Realizar análise de dados financeiros', 1, '2022-04-01', '2022-11-30'),
(5, 'Atividade 5', 'Realizar avaliações de desempenho dos funcionários', 5, '2022-12-30', '2023-04-25');

INSERT INTO atividade_projeto (cod_projeto, cod_atividade) VALUES 
(1, 1),(2, 2),(3, 3),(4, 4),(5, 5);


UPDATE departamento  SET cod_gerente = 2 WHERE codigo =1;
UPDATE departamento  SET cod_gerente = 3 WHERE codigo =2;
UPDATE departamento  SET cod_gerente = 4 WHERE codigo =3;
UPDATE departamento  SET cod_gerente = 1 WHERE codigo =4;
UPDATE departamento  SET cod_gerente = 5 WHERE codigo =5;
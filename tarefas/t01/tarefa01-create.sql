CREATE TABLE funcionario (
  codigo INTEGER PRIMARY KEY,
  nome VARCHAR(50) NOT NULL,
  sexo CHAR(1) NOT NULL,
  dt_nasc DATE NOT NULL,
  salario NUMERIC(10, 2) NOT NULL,
  cod_depto INTEGER NOT NULL
);

CREATE TABLE departamento (
  codigo INTEGER PRIMARY KEY,
  descricao VARCHAR(50) NOT NULL,
  cod_gerente INTEGER
  
);

CREATE TABLE projeto (
  codigo INTEGER PRIMARY KEY,
  nome VARCHAR(50) NOT NULL,
  descricao TEXT NOT NULL,
  cod_depto INTEGER NOT NULL,
  cod_responsavel INTEGER NOT NULL,
  data_inicio DATE NOT NULL,
  data_fim DATE NOT NULL
 
);

CREATE TABLE atividade (
  codigo INTEGER PRIMARY KEY,
  nome VARCHAR(50) NOT NULL,
  descricao TEXT NOT NULL,
  cod_responsavel INTEGER NOT NULL,
  data_inicio DATE NOT NULL,
  data_fim DATE NOT NULL
  
);

CREATE TABLE atividade_projeto (
  cod_projeto INTEGER NOT NULL,
  cod_atividade INTEGER NOT NULL,
  PRIMARY KEY (cod_projeto, cod_atividade)
 
);

ALTER TABLE funcionario
    ADD CONSTRAINT fk_funcionario_depto FOREIGN KEY (cod_depto) REFERENCES departamento(codigo);
    

ALTER TABLE departamento
    ADD CONSTRAINT fk_depto_funcionario FOREIGN KEY (cod_gerente) REFERENCES funcionario(codigo);
    
ALTER TABLE projeto
    ADD CONSTRAINT fk_prjt_depto FOREIGN KEY (cod_depto) REFERENCES departamento(codigo);
    
ALTER TABLE projeto
    ADD CONSTRAINT fk_prjt_funcionario FOREIGN KEY (cod_responsavel) REFERENCES funcionario(codigo);
    
ALTER TABLE atividade
	ADD CONSTRAINT fk_ativ_funcionario FOREIGN KEY (cod_responsavel) REFERENCES funcionario(codigo);

ALTER TABLE atividade_projeto 
	ADD CONSTRAINT fk_atividade_projeto FOREIGN KEY (cod_projeto) REFERENCES projeto(codigo);

ALTER TABLE atividade_projeto 
	ADD CONSTRAINT fk_atividade FOREIGN KEY (cod_atividade) REFERENCES atividade(codigo);
    

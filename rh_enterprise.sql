CREATE DATABASE db_rh_enterprise;

USE db_rh_enterprise;

CREATE TABLE tb_colaboradores(
	id bigint auto_increment, 
    nome varchar(255) not null, 
    cargo varchar(255) not null,
    departamento VARCHAR(255) not null,
    salario decimal(10,2) not null,
    data_contratacao DATE,
    ferias_em_dias int,
    ferias_pendentes boolean,
    PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores (nome, cargo, departamento, salario, data_contratacao, ferias_em_dias, ferias_pendentes)
VALUES
  ('James T. Kirk', 'Capitão', 'Comando', 2500, '2245-01-15', 20, true),
  ("S'chn T'gai Spock", 'Oficial de Ciências', 'Ciências', 3000, '2245-03-10', 15, false),
  ('Leonard McCoy', 'Médico Chefe', 'Médico', 1800, '2245-07-02', 10, true);
  
INSERT INTO tb_colaboradores (nome, cargo, departamento, salario, data_contratacao, ferias_em_dias, ferias_pendentes)
VALUES 
  ('Nyota Uhura', 'Oficial de Comunicações', 'Comunicações', 2200, '2245-05-20', 25, false),
  ('Montgomery Scott', 'Engenheiro Chefe', 'Engenharia', 2800, '2245-09-05', 30, false);
  
SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 2100 WHERE id = 3;

SELECT * FROM tb_colaboradores;

CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
  id INT AUTO_INCREMENT ,
  nome VARCHAR(255) NOT NULL,
  descricao VARCHAR(255), 
  PRIMARY KEY (id)
);

INSERT INTO tb_classes (nome, descricao) VALUES
('Bárbaro', 'Personagem especializade em força bruta e fúria'),
('Feiticeiro', 'Personagem especializade em magias de sangue e poder inato'),
('Bardo', 'Personagem especializade em música, poesia e manipulação social'),
('Druida', 'Personagem especializade em magias da natureza e transformação'),
('Paladino', 'Personagem especializade em combate sagrado e proteção divina');

SELECT * FROM tb_classes;

CREATE TABLE tb_personagens (
  id INT AUTO_INCREMENT,
  PRIMARY KEY (id),
  nome VARCHAR(50) NOT NULL,
  nivel INT,
  poder_ataque INT,
  poder_defesa INT,
  classe_id INT,
  FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, classe_id)
VALUES
('Garruk, o Bravateiro', 10, 2500, 1800, 1),
('Merlin, o Mago', 8, 1900, 1200, 4),
('O Flautista de Hamelin', 12, 3500, 2500, 3),
('Morgana, a Bruxa', 5, 1200, 900, 2),
('Cleric, o Abençoado', 15, 4000, 3000, 5),
('Conan, o Destemido', 9, 2200, 1500, 1),
('Homero', 6, 1800, 1300, 3),
('Gandalf, o Sábio', 11, 2800, 2000, 2);

-- Personagens com poder de ataque maior que 2000
SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

-- Personagens com poder de defesa entre 1000 e 2000
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

-- Personagens com a letra 'C' no atributo nome
SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

-- Inner Join entre tb_personagens e tb_classes
SELECT tb_personagens.*, tb_classes.nome AS classe FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id;

-- Inner Join entre tb_personagens e tb_classes para uma classe específica
SELECT tb_personagens.*, tb_classes.nome AS classe FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id
WHERE tb_classes.nome = 'Feiticeiro';
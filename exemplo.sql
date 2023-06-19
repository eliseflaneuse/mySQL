CREATE DATABASE db_quitanda;

USE db_quitanda;

CREATE TABLE tb_produtos(
	id bigint auto_increment, 
    nome varchar(255) not null, 
    quantidade int, 
    preco decimal(6,2) not null,
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("tomate",100, 8.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("maçã",20, 5.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("laranja",50, 10.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("banana",200, 12.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("uva",1200, 30.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("pêra",500, 2.99);

SELECT * FROM tb_produtos;

SELECT nome FROM tb_produtos WHERE preco > 5;

DELETE FROM tb_produtos WHERE id = 7;

UPDATE tb_produtos SET preco = 2.99 WHERE id = 6;

SELECT * FROM tb_produtos;
-- Adicionando a nova coluna
ALTER TABLE tb_produtos ADD categoria_id bigint;

-- Adicionando a constraint
ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias 
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id);

UPDATE tb_produtos SET categoria_id = 1 WHERE id = 1;

INSERT INTO tb_produtos(
    nome, quantidade, preco, categoria_id
) values("Pitaya", 10, 15.00, 1);

INSERT INTO tb_produtos(
    nome, quantidade, preco, categoria_id
) values("Agrião", 15, 3.00, 2);

INSERT INTO tb_produtos(
    nome, quantidade, preco, categoria_id
) values("Cenoura", 18, 3.50, 3);
SELECT * FROM tb_produtos;
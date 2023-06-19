USE db_quitanda;

CREATE TABLE tb_categorias (
    id bigint auto_increment,
    nome varchar(255) not null,
    PRIMARY KEY (id)
);

INSERT INTO tb_categorias (nome) VALUES ("Fruta");
INSERT INTO tb_categorias (nome) VALUES ("Verdura");
INSERT INTO tb_categorias (nome) VALUES ("Legume");

SELECT * FROM tb_categorias;

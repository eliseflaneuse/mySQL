CREATE DATABASE db_hogwarts;

USE db_hogwarts;

CREATE TABLE tb_alumni(
	id bigint auto_increment, 
    nome varchar(255) not null, 
    data_de_nascimento DATE,
    casa varchar(255) not null,
    ano int,
    autorizacao_hogsmeade boolean,
    nota_final decimal(4,2) not null,
    PRIMARY KEY (id)
);

INSERT INTO tb_alumni (nome, data_de_nascimento, casa, ano, autorizacao_hogsmeade, nota_final)
VALUES ('Harry Potter', '1980-07-31', 'Grifinória', 1997, true, 7.5);

INSERT INTO tb_alumni (nome, data_de_nascimento, casa, ano, autorizacao_hogsmeade, nota_final)
VALUES ('Hermione Granger', '1979-09-19', 'Grifinória', 1997, true, 10.00);

INSERT INTO tb_alumni (nome, data_de_nascimento, casa, ano, autorizacao_hogsmeade, nota_final)
VALUES ('Ron Weasley', '1980-03-01', 'Grifinória', 1997, true, 4.5);

INSERT INTO tb_alumni (nome, data_de_nascimento, casa, ano, autorizacao_hogsmeade, nota_final)
VALUES ('Draco Malfoy', '1980-06-05', 'Sonserina', 1997, true, 9.75);

INSERT INTO tb_alumni (nome, data_de_nascimento, casa, ano, autorizacao_hogsmeade, nota_final)
VALUES ('Luna Lovegood', '1981-02-13', 'Corvinal', 1998, true, 9.2);

INSERT INTO tb_alumni (nome, data_de_nascimento, casa, ano, autorizacao_hogsmeade, nota_final)
VALUES ('Neville Longbottom', '1980-07-30', 'Grifinória', 1997, true, 8.3);

INSERT INTO tb_alumni (nome, data_de_nascimento, casa, ano, autorizacao_hogsmeade, nota_final)
VALUES ('Gina Weasley', '1981-08-11', 'Grifinória', 1998, true, 6.0);

INSERT INTO tb_alumni (nome, data_de_nascimento, casa, ano, autorizacao_hogsmeade, nota_final)
VALUES ('Cedrico Diggory', '1977-09-01', 'Lufa-Lufa', 1995, true, 5.5);

SELECT * FROM tb_alumni WHERE nota_final > 7.0;

SELECT * FROM tb_alumni WHERE nota_final < 7.0;

UPDATE tb_alumni SET nota_final = 7 WHERE id = 7;

SELECT * FROM tb_alumni;

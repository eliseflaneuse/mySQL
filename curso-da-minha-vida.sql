CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT, 
    PRIMARY KEY (id)
);

INSERT INTO tb_categorias (nome, descricao)
VALUES
    ('Pintura', 'Cursos de pintura em diversas técnicas.'),
    ('Desenho', 'Cursos de desenho artístico, ilustração e modelo vivo.'),
    ('Escultura', 'Cursos de escultura em diferentes materiais.'),
    ('Fotografia', 'Cursos de fotografia digital e analógica.'),
    ('Arte Digital', 'Cursos de arte digital e design gráfico.');
    
CREATE TABLE tb_cursos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT,
    valor DECIMAL(10, 2) NOT NULL,
    categoria_id INT NOT NULL,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);

INSERT INTO tb_cursos (nome, descricao, valor, categoria_id)
VALUES
    ('Curso de Pintura a Óleo', 'Aprenda a pintar utilizando a técnica de óleo sobre tela.', 800.00, 1),
    ('Curso de Desenho Realista', 'Aprenda a desenhar retratos realistas com lápis grafite.', 600.00, 2),
    ('Curso de Escultura em Argila', 'Aprenda a modelar esculturas em argila utilizando diferentes técnicas.', 700.00, 3),
    ('Curso de Fotografia de Paisagem', 'Domine as técnicas de fotografia de paisagem e captura de momentos únicos.', 900.00, 4),
    ('Curso de Arte Digital e Ilustração', 'Aprenda a criar ilustrações digitais utilizando softwares de design.', 1000.00, 5),
    ('Curso de Pintura em Aquarela', 'Aprenda a pintar utilizando a técnica de aquarela.', 550.00, 1),
    ('Curso de Desenho de Mangá', 'Aprenda a desenhar personagens de mangá e anime passo a passo.', 750.00, 2),
    ('Curso de Edição de Fotos no Photoshop', 'Aprenda a editar e retocar fotos utilizando o Photoshop.', 850.00, 4);

SELECT * FROM tb_cursos;
SELECT * FROM tb_categorias;

-- SELECT que retorna todos os cursos cujo valor seja maior que R$ 500,00
SELECT * FROM tb_cursos WHERE valor > 500.00;

-- SELECT que retorna todos os cursos cujo valor esteja no intervalo de R$ 600,00 e R$ 1000,00
SELECT * FROM tb_cursos WHERE valor BETWEEN 600.00 AND 1000.00;

-- SELECT utilizando o operador LIKE para buscar cursos que possuam a letra 'J' no nome
SELECT * FROM tb_cursos WHERE nome LIKE '%J%';

-- SELECT utilizando INNER JOIN para unir os dados da tabela tb_cursos com tb_categorias
SELECT c.nome AS curso, c.descricao AS curso_descricao, cat.nome AS categoria, cat.descricao AS categoria_descricao
FROM tb_cursos c INNER JOIN tb_categorias cat ON c.categoria_id = cat.id;

-- SELECT utilizando INNER JOIN para unir os dados da tabela tb_cursos com tb_categorias, filtrando por uma categoria específica
SELECT c.nome AS curso, c.descricao AS curso_descricao, cat.nome AS categoria, cat.descricao AS categoria_descricao
FROM tb_cursos c
INNER JOIN tb_categorias cat ON c.categoria_id = cat.id
WHERE cat.nome = 'Pintura';
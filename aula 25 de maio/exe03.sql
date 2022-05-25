-- Criação do banco de dados
CREATE DATABASE db_farmacia_bem_estar;

-- Criação da tabela categorias
CREATE TABLE tb_categorias (
	id BIGINT AUTO_INCREMENT,
    tipo VARCHAR(255),
    estante BIGINT,
	-- Chave primária
    PRIMARY KEY (id)
);
-- Determinando registros
INSERT INTO tb_categorias (tipo, estante) VALUES ("Remédio", 1);
INSERT INTO tb_categorias (tipo, estante) VALUES ("Cosmético", 2);
INSERT INTO tb_categorias (tipo, estante) VALUES ("Higiene", 3);
INSERT INTO tb_categorias (tipo, estante) VALUES ("Alimento", 4);
INSERT INTO tb_categorias (tipo, estante) VALUES ("Utilitário", 5);
SELECT * FROM tb_categorias;

-- Criação tabela produtos
CREATE TABLE tb_produtos (
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    valor DECIMAL(5,2),
    validade VARCHAR(255),
    desconto VARCHAR(255),
    id_categorias BIGINT,
    -- Chave primária
    PRIMARY KEY (id),
    FOREIGN KEY (id_categorias) REFERENCES tb_categorias (id)
);
-- Determinado registros
INSERT INTO tb_produtos (nome, valor, validade, desconto, id_categorias) VALUES 
	("Dipirona", 15.00, "90 dias", "15%", 1);
INSERT INTO tb_produtos (nome, valor, validade, desconto, id_categorias) VALUES 
	("Buscofem", 25.99, "90 dias", "0%", 1);
INSERT INTO tb_produtos (nome, valor, validade, desconto, id_categorias) VALUES 
	("Esmalte Azul", 4.99, "1 ano", "0%", 2);
INSERT INTO tb_produtos (nome, valor, validade, desconto, id_categorias) VALUES 
	("Pente", 3.99, "Indefinida", "0%", 2);
INSERT INTO tb_produtos (nome, valor, validade, desconto, id_categorias) VALUES 
	("Perfume", 32.99, "2 anos", "8%", 3);
INSERT INTO tb_produtos (nome, valor, validade, desconto, id_categorias) VALUES 
	("Sabonete", 2.99, "180 dias", "0%", 3);
INSERT INTO tb_produtos (nome, valor, validade, desconto, id_categorias) VALUES 
	("Chiclete", 4.99, "1 ano", "0%", 4);
INSERT INTO tb_produtos (nome, valor, validade, desconto, id_categorias) VALUES 
	("Termometro", 25.00, "Indefinida", "2%", 5);
SELECT * FROM tb_produtos;
-- Select de valor maior que 50
SELECT * FROM tb_produtos WHERE valor > 50; 
-- Select de valor entre 5 e 60
SELECT * FROM tb_produtos WHERE valor > 6 AND valor < 60;
-- Select de produtos com letra "C"
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";
-- Select com inner join juntando as tabelas
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.id_categorias = tb_categorias.id;
-- Select com inner join de uma categoria específica
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.id_categorias = tb_categorias.id WHERE tipo = "Higiene";	
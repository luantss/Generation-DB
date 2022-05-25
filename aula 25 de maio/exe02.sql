-- Criação do banco de dados
CREATE DATABASE db_pizzaria_legal;
-- Criação da tabela de categorias
CREATE TABLE tb_categorias (
	id BIGINT AUTO_INCREMENT,
	tamanho VARCHAR(255),
    tipo VARCHAR(255),
    -- Chave primária
    PRIMARY KEY (id)
);
-- Determinando registros
INSERT INTO tb_categorias (tamanho, tipo) VALUES ("Pequena", "Salgada");
INSERT INTO tb_categorias (tamanho, tipo) VALUES ("Média", "Salgada");
INSERT INTO tb_categorias (tamanho, tipo) VALUES ("Grande", "Salgada");
INSERT INTO tb_categorias (tamanho, tipo) VALUES ("Pequena", "Doce");
INSERT INTO tb_categorias (tamanho, tipo) VALUES ("Média", "Doce");
INSERT INTO tb_categorias (tamanho, tipo) VALUES ("Grande", "Doce");
SELECT * FROM tb_categorias;

-- Criação da tabela pizzas
CREATE TABLE tb_pizzas (
	id BIGINT AUTO_INCREMENT,
    sabor VARCHAR(255),
    valor DECIMAL(5,2),
    borda VARCHAR(255),
    adicional VARCHAR(255),
    id_categorias BIGINT,
    -- Chave primária
    PRIMARY KEY (id),
    -- Chave estrangeira
    FOREIGN KEY (id_categorias) REFERENCES tb_categorias (id)
);
SELECT * FROM tb_pizzas;
-- Determinando registros 
INSERT INTO tb_pizzas (sabor, valor, borda, adicional, id_categorias) VALUES
	("Mussarela", 39.90, "Recheada", "Nenhum", 2);
INSERT INTO tb_pizzas (sabor, valor, borda, adicional, id_categorias) VALUES
	("Marguerita", 69.90, "Tradicional", "Azeitona", 3);
INSERT INTO tb_pizzas (sabor, valor, borda, adicional, id_categorias) VALUES
	("Frango", 79.90, "Recheada", "Tomate", 3);
INSERT INTO tb_pizzas (sabor, valor, borda, adicional, id_categorias) VALUES
	("Chocolate", 29.90, "Tradicional", "Nenhum", 4);
INSERT INTO tb_pizzas (sabor, valor, borda, adicional, id_categorias) VALUES
	("Morango", 39.90, "Tradicional", "Chocolate", 5);
INSERT INTO tb_pizzas (sabor, valor, borda, adicional, id_categorias) VALUES
	("Quatro Queijos", 79.90, "Recheada", "Nenhum", 3);
INSERT INTO tb_pizzas (sabor, valor, borda, adicional, id_categorias) VALUES
	("Alho", 59.90, "Tradicional", "Tomate", 2);
INSERT INTO tb_pizzas (sabor, valor, borda, adicional, id_categorias) VALUES
	("Vegetariana", 45.90, "Tradicional", "Azeitona", 2);
SELECT * FROM tb_pizzas;
-- Select valor maior que 45
SELECT * FROM tb_pizzas WHERE valor > 45.00;
-- Select valor entre 50 e 100
SELECT * FROM tb_pizzas WHERE valor > 50.00 AND valor < 100.00;
-- Select de pizza com letra "M"
SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%";
-- Select com inner join unindo os dados das tabelas
SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.id_categorias;
-- Select com inner join das pizzas doces
SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.id_categorias AND tb_categorias.tipo = "Doce";

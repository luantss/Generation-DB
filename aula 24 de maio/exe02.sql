CREATE DATABASE db_exe02;
USE db_exe02;
CREATE TABLE tb_produtos (
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    valor DECIMAL(6,2),
    tipo VARCHAR(255),
    cor VARCHAR(255),
    estadouso VARCHAR(255),
    PRIMARY KEY (id)
);
SELECT * FROM tb_produtos;
INSERT INTO tb_produtos(nome, valor, tipo, cor, estadouso) VALUES
	("sofa", 599.90, "movel", "rosa", "usado");
INSERT INTO tb_produtos(nome, valor, tipo, cor, estadouso) VALUES
	("geladeira", 1200.00, "eletrodomestico", "cinza", "seminovo");
INSERT INTO tb_produtos(nome, valor, tipo, cor, estadouso) VALUES
	("blusa", 29.90, "roupa", "verde", "nova");
INSERT INTO tb_produtos(nome, valor, tipo, cor, estadouso) VALUES
	("fone", 47.90, "eletronico", "branco", "seminovo");
INSERT INTO tb_produtos(nome, valor, tipo, cor, estadouso) VALUES
	("vestido", 59.90, "roupa", "preto", "seminovo");
INSERT INTO tb_produtos(nome, valor, tipo, cor, estadouso) VALUES
	("cadeira", 19.90, "movel", "branca", "usado");
INSERT INTO tb_produtos(nome, valor, tipo, cor, estadouso) VALUES
	("estante", 58.95, "movel", "cinza", "usado");
INSERT INTO tb_produtos(nome, valor, tipo, cor, estadouso) VALUES
	("televisao", 800.00, "eletronico", "preto", "seminovo");
SELECT * FROM tb_produtos WHERE valor > 50;
SELECT * FROM tb_produtos WHERE valor < 50;
SELECT * FROM tb_produtos WHERE id = 2;
UPDATE tb_produtos SET valor = 25.00 WHERE id = 6;
DELETE FROM tb_produtos WHERE id = 2;
DELETE FROM tb_produtos WHERE id = 3;
		
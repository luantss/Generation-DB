CREATE DATABASE db_exe01;
USE db_exe01;
CREATE TABLE tb_produtos (
	id BIGINT AUTO_INCREMENT,
    tipo VARCHAR(255),
    peso DECIMAL(6,3),
    nome VARCHAR(255),
    valor DECIMAL(5,2),
    validade VARCHAR(255),
    
    PRIMARY KEY (id)
);
SELECT * FROM tb_produtos;
INSERT INTO tb_produtos(tipo, peso, nome, valor, validade) VALUES
	("fruta", 1.654, "banana", 5.50, "15 dias");
INSERT INTO tb_produtos(tipo, peso, nome, valor, validade) VALUES
	("fruta", 3.500, "melancia", 10.50, "30 dias");
INSERT INTO tb_produtos(tipo, peso, nome, valor, validade) VALUES
	("legume", 0.989, "beterraba", 3.50, "20 dias");
INSERT INTO tb_produtos(tipo, peso, nome, valor, validade) VALUES
	("legume", 1.250, "pepino", 9.99, "45 dias");
INSERT INTO tb_produtos(tipo, peso, nome, valor, validade) VALUES
	("verdura", 0.800, "espinafre", 6.50, "14 dias");
INSERT INTO tb_produtos(tipo, peso, nome, valor, validade) VALUES
	("verdura", 2.842, "cebolinha", 3.50, "28 dias");
INSERT INTO tb_produtos(tipo, peso, nome, valor, validade) VALUES
	("verdura", 1.789, "brocolis", 9.62, "15 dias");
INSERT INTO tb_produtos(tipo, peso, nome, valor, validade) VALUES
	("fruta", 1.500, "morango", 12.50, "21 dias");

SELECT * FROM tb_produtos WHERE tipo = "fruta";
SELECT * FROM tb_produtos WHERE tipo = "legume";
UPDATE tb_produtos SET peso = 1.200 WHERE id = 6;
SET SQL_SAFE_UPDATES=0;
DELETE FROM tb_produtos WHERE tipo = "verdura";

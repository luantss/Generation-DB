-- Criação do banco de dados
CREATE DATABASE db_generation_game_online;

-- Criação da tabela classes
CREATE TABLE tb_classes (
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    tipo_combate VARCHAR(255),
    -- Criação da chave primária
    PRIMARY KEY (id)
);
-- Determinando registros
INSERT INTO tb_classes(nome, tipo_combate) VALUES ("Guerreiro", "Corporal");
INSERT INTO tb_classes(nome, tipo_combate) VALUES ("Arqueiro", "Distância");
INSERT INTO tb_classes(nome, tipo_combate) VALUES ("Mago", "Distância");
INSERT INTO tb_classes(nome, tipo_combate) VALUES ("Assassino", "Corporal");
INSERT INTO tb_classes(nome, tipo_combate) VALUES ("Curandeiro", "Distância");
SELECT * FROM tb_classes;
-- Criação da tabela personagens
CREATE TABLE tb_personagens (
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    poder_ataque BIGINT,
    poder_habilidade BIGINT,
    poder_defesa BIGINT,
    velocidade_ataque VARCHAR(255),
    classe_id BIGINT,
    -- Criação da chave primária
    PRIMARY KEY (id),
    -- Criação da chave estrangeira
    FOREIGN KEY (classe_id) REFERENCES tb_classes (id)
);
-- Determinando registros
INSERT INTO tb_personagens (nome, poder_ataque, poder_habilidade, poder_defesa, velocidade_ataque, classe_id) VALUES
	("Garen", 2300, 500, 1900, "Lento", 1);
INSERT INTO tb_personagens (nome, poder_ataque, poder_habilidade, poder_defesa, velocidade_ataque, classe_id) VALUES
	("Veigar", 850, 2300, 1000, "Lento", 3);
INSERT INTO tb_personagens (nome, poder_ataque, poder_habilidade, poder_defesa, velocidade_ataque, classe_id) VALUES
	("Ashe", 1800, 800, 700, "Rápido", 2);
INSERT INTO tb_personagens (nome, poder_ataque, poder_habilidade, poder_defesa, velocidade_ataque, classe_id) VALUES
	("Varus", 2100, 700, 650, "Médio", 2);
INSERT INTO tb_personagens (nome, poder_ataque, poder_habilidade, poder_defesa, velocidade_ataque, classe_id) VALUES
	("Zed", 2600, 200, 750, "Médio", 4);
INSERT INTO tb_personagens (nome, poder_ataque, poder_habilidade, poder_defesa, velocidade_ataque, classe_id) VALUES
	("Soraka", 600, 1800, 1100, "Lento", 5);
INSERT INTO tb_personagens (nome, poder_ataque, poder_habilidade, poder_defesa, velocidade_ataque, classe_id) VALUES
	("Swain", 650, 2100, 1200, "Lento", 3);
INSERT INTO tb_personagens (nome, poder_ataque, poder_habilidade, poder_defesa, velocidade_ataque, classe_id) VALUES
	("Fiora", 2150, 400, 1700, "Rápido", 1);
SELECT * FROM tb_personagens;
-- Poder de ataque maior que 2000
SELECT * FROM tb_personagens WHERE poder_ataque > 2000;
-- Poder de defesa entre 1000 e 2000
SELECT * FROM tb_personagens WHERE poder_defesa > 1000 and poder_defesa < 2000;
-- Personagem com letra "C" no nome
SELECT * FROM tb_personagens WHERE nome LIKE "%c%";
-- Inner Join da classe arqueiro
SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id
	WHERE tb_classes.nome = "Arqueiro";
/*Crie um banco de dados para um serviço de um Games Online. 
O nome do Banco de dados deverá ter o seguinte nome db_generation_game_online. 
O sistema trabalhará com as informações dos personagens do jogo. 
O sistema trabalhará com 2 tabelas tb_personagens e tb_classes, 
que deverão estar relacionadas.*/

CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

-- Crie a tabela tb_classes

CREATE TABLE tb_classes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    arma VARCHAR(255) NOT NULL
);


-- Crie a tabela tb_personagens
CREATE TABLE tb_personagens (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    atk INT NOT NULL,
    def INT NOT NULL,
    life INT NOT NULL DEFAULT 2000,
    id_classe INT NOT NULL,
    CONSTRAINT fk_classes_personagens FOREIGN KEY (id_classe)
        REFERENCES tb_classes (id)
);


INSERT INTO tb_classes (nome, arma) VALUES 
('Guerreiro', 'Espada de Duas Mãos'),
('Mago', 'Cajado Arcano'),
('Arqueiro', 'Arco Longo'),
('Assassino', 'Adagas Duplas'),
('Clérigo', 'Maça e Escudo');

INSERT INTO tb_personagens (nome, atk, def, life, id_classe) VALUES 
('Arthur Pendragon', 2500, 1800, 2500, 1),
('Morgana Casmurro', 3200, 1000, 1500, 2),
('Legolas', 2200, 1200, 1800, 3),
('Shadow Blade', 2800, 800, 1400, 4),
('Brother John', 1200, 2200, 3000, 5),
('Gandalf', 3500, 1100, 1600, 2),
('Ezio', 2700, 900, 1450, 4),
('Gimli', 2300, 2500, 2800, 1);

UPDATE tb_personagens 
SET 
    atk = 1900
WHERE
    id = 8;

UPDATE tb_personagens 
SET 
    nome = 'Morganac'
WHERE
    id = 2;

SELECT 
    *
FROM
    tb_personagens
WHERE
    atk > 2000;

SELECT 
    *
FROM
    tb_personagens
WHERE
    def BETWEEN 1000 AND 2000;

SELECT 
    *
FROM
    tb_personagens
WHERE
    nome LIKE '%C%';


SELECT 
    p.nome, c.nome AS Classe
FROM
    tb_personagens p
        INNER JOIN
    tb_classes c ON c.id = p.id_classe; 


SELECT 
    *
FROM
    tb_personagens p
        INNER JOIN
    tb_classes c ON c.id = p.id_classe
WHERE
    c.id = 3;
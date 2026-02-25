-- Crie um banco de dados para um serviço de uma Pizzaria. 
-- O nome do Banco de dados deverá ter o seguinte nome db_pizzaria_legal. 
-- O sistema trabalhará com as informações dos produtos comercializados
--  pela empresa. O sistema trabalhará com 2 tabelas tb_pizzas e 
--  tb_categorias, que deverão estar relacionadas.
DROP DATABASE IF EXISTS  db_pizzaria_legal;
CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
	tipo VARCHAR(50) NOT NULL,
    tamanho_padrao VARCHAR(50)
);
CREATE TABLE tb_pizzas (
    id INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(100) NOT NULL,
    valor DECIMAL(8, 2) NOT NULL,
    ingredientes TEXT,
    borda_recheada BOOLEAN,
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (tipo, tamanho_padrao) VALUES 
('Salgada Tradicional', 'Grande (8 fatias)'),
('Salgada Especial', 'Grande (8 fatias)'),
('Doce', 'Brotinho (4 fatias)'),
('Vegana', 'Média (6 fatias)'),
('Kids', 'Individual');

INSERT INTO tb_pizzas (nome, valor, ingredientes, borda_recheada, categoria_id) VALUES 
('Mussarela', 45.90, 'Molho de tomate, mussarela abundante e orégano', FALSE, 1),
('Calabresa', 48.00, 'Molho de tomate, calabresa fatiada e cebola', TRUE, 1),
('Quatro Queijos', 55.00, 'Mussarela, provolone, parmesão e gorgonzola', TRUE, 2),
('Portuguesa', 52.50, 'Ovo, presunto, cebola, ervilha e mussarela', FALSE, 1),
('Frango com Catupiry', 54.00, 'Peito de frango desfiado com catupiry original', TRUE, 2),
('Brigadeiro', 35.00, 'Chocolate ao leite e granulado', FALSE, 3),
('Romeu e Julieta', 38.00, 'Queijo branco com goiabada cascão', FALSE, 3),
('Abobrinha Vegana', 50.00, 'Abobrinha grelhada, molho de tomate e queijo vegano', FALSE, 4);

SELECT * FROM TB_PIZZAS WHERE VALOR> 45;
SELECT * FROM TB_PIZZAS WHERE VALOR BETWEEN 50 AND 100;
SELECT * FROM TB_PIZZAS WHERE NOME LIKE "%M%";

SELECT * FROM TB_PIZZAS P INNER JOIN TB_CATEGORIAS C ON P.CATEGORIA_ID = C.ID;
SELECT * FROM TB_PIZZAS P INNER JOIN TB_CATEGORIAS C ON P.CATEGORIA_ID = C.ID WHERE C.ID =2;

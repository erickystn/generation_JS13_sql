/* 
Crie um banco de dados para um e-commerce, onde o sistema
 trabalhará com as informações dos produtos deste e-commerce. 
Crie uma tabela de produtos e determine 5 atributos relevantes 
dos produtos para se trabalhar com o serviço deste e-commerce.
Insira nesta tabela no mínimo 8 dados (registros).
Faça um SELECT que retorne todes os produtos com o valor maior do que 500.
Faça um SELECT que retorne todes os produtos com o valor menor do que 500.
Ao término atualize um registro desta tabela através de uma query de atualização.
Salve todas as queries para cada um dos requisitos do exercício em 
um único script (arquivo .SQL) e coloque no seu Github pessoal, 
no repositório que você criou sobre Banco de dados.

*/

CREATE DATABASE DB_ESTOQUE;
USE DB_ESTOQUE;
CREATE TABLE PRODUTOS(
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
descricao VARCHAR(255) ,
preco DECIMAL(6,2) NOT NULL,
quantidade INT NOT NULL DEFAULT 0
);

INSERT INTO PRODUTOS (nome, descricao, preco, quantidade) VALUES 
("Cadeira Office", "Ergonômica com ajuste de altura", 649.90, 12),
("Webcam Full HD", NULL, 189.00, 5),
("Placa de Vídeo RTX", "NVIDIA 8GB GDDR6 Ray Tracing", 2450.00, 8),
("SSD NVMe 1TB", "Leitura 3500MB/s Gravação 3000MB/s", 420.50, 15),
("Gabinete ATX", "Lateral em vidro temperado com 3 fans RGB", 389.90, 22);

INSERT INTO PRODUTOS (nome, descricao, preco) VALUES 
("Hub USB-C 5 em 1", "Adaptador multi-portas", 120.00), 
("Suporte de Notebook", NULL, 55.00), 
("Película de Vidro", NULL, 15.00); 

SELECT * FROM PRODUTOS WHERE PRECO > 500;
SELECT * FROM PRODUTOS WHERE PRECO < 500;

UPDATE PRODUTOS SET quantidade = 10 where id=5;


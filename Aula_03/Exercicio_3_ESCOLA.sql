/*
Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as informações dos estudantes deste registro dessa escola. 
Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos relevantes dos estudantes para se trabalhar com o serviço dessa escola.
Insira nesta tabela no mínimo 8 dados (registros).
Faça um SELECT que retorne todes o/a(s) estudantes com a nota maior do que 7.0.
Faça um SELECT que retorne todes o/a(s) estudantes com a nota menor do que 7.0.
Ao término atualize um registro desta tabela através de uma query de atualização.
Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.

 */
 
 CREATE DATABASE DB_ESCOLA;
USE DB_ESCOLA;
CREATE TABLE ESTUDANTES(
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
data_nascimento DATE NOT NULL,
nota DECIMAL(4,2) NOT NULL,
email VARCHAR(255) NOT NULL
);

INSERT INTO ESTUDANTES (nome, data_nascimento, nota, email) VALUES 
("Alice Ferreira", "2005-03-12", 8.50, "alice.ferreira@email.com"),
("Bruno Rocha", "2004-07-22", 7.25, "bruno.rocha@email.com"),
("Caio Martins", "2006-01-15", 9.75, "caio.martins@email.com"),
("Daniela Neves", "2005-11-30", 6.80, "daniela.neves@email.com"),
("Eduardo Gomes", "2004-05-05", 10.00, "eduardo.gomes@email.com"),
("Fernanda Lima", "2006-09-18", 5.50, "fernanda.lima@email.com"),
("Gabriel Souza", "2005-02-28", 8.90, "gabriel.souza@email.com"),
("Helena Costa", "2004-12-10", 7.40, "helena.costa@email.com");

SELECT * FROM ESTUDANTES WHERE NOTA > 7;
SELECT * FROM ESTUDANTES WHERE NOTA < 7;

UPDATE ESTUDANTES SET nota = 8.8 where id=4;


 /*ATIVIDADE 01

Crie um banco de dados para um serviço de RH de uma empresa,
 onde o sistema trabalhará com as informações dos COLABORADORES
  desta empresa.Crie uma tabela de COLABORADORESes e determine 
  5 atributos relevantes dos COLABORADORES para se trabalhar 
com o serviço deste RH. Insira nesta tabela no mínimo 5 dados (registros).
Faça um SELECT que retorne todes os COLABORADORESes 
com o salário maior do que 2000. Faça um SELECT que retorne 
todes os COLABORADORESes com o salário menor do que 2000. Ao término
 atualize um registro desta tabela através de uma query de atualização.
Salve todas as queries para cada um dos requisitos do 
	exercício em um único script (arquivo .SQL) e 
	coloque no seu Github pessoal, no repositório que 
	você criou sobre Banco de dados.
*/

CREATE DATABASE DB_RH;
USE DB_RH;
CREATE TABLE COLABORADORES(
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
cargo VARCHAR(50) NOT NULL,
salario DECIMAL(6,2) NOT NULL,
data_admissao DATE NOT NULL,
ativo BOOLEAN DEFAULT TRUE
);

INSERT INTO COLABORADORES (nome,cargo, salario, data_admissao) VALUES
("Ana Silva", "Desenvolvedora Backend",4500.00,"2023-01-15"),
("Bruno Costa", "Analista de Dados",5200.00, "2022-05-20"),
("Carla Souza", "Gerente de Projetos",4800.00, "2021-11-10"),
( "Diego Lima", "Designer UX",1999.00, "2023-08-01"),
("Elena Mendes", "Especialista em SEO",6000.00, "2020-03-12");

SELECT * FROM COLABORADORESES WHERE salario > 2000;
SELECT * FROM COLABORADORESES WHERE salario < 2000;

UPDATE COLABORADORESES SET nome = "Carla Sousa" where id=2;




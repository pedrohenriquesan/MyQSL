CREATE DATABASE nomeBanco	/*criação de banco de dados*/

USE nomeBanco	/*uso do banco de dados criado*/

CREATE TABLE cliente	/*criação de tabela*/
(
	nome VARCHAR (100),
	cpf VARCHAR (20),
	idade INT,
	data_nascimento DATE
)

INSERT INTO cliente (nome, cpf, idade, data_nascimento) VALUES
('Pedro', '129.576.216-14', 20, '12/04/2002')	/*adicionano registro*/
/*padrão internacional de data, mês vem antes do dia (verificar)*/

SELECT * FROM cliente	/*seleção completa da tabela*/




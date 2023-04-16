CREATE DATABASE nomeBanco	/*cria��o de banco de dados*/

USE nomeBanco	/*uso do banco de dados criado*/

CREATE TABLE cliente	/*cria��o de tabela*/
(
	nome VARCHAR (100),
	cpf VARCHAR (20),
	idade INT,
	data_nascimento DATE
)

INSERT INTO cliente (nome, cpf, idade, data_nascimento) VALUES
('Pedro', '129.576.216-14', 20, '12/04/2002')	/*adicionano registro*/
/*padr�o internacional de data, m�s vem antes do dia (verificar)*/

SELECT * FROM cliente	/*sele��o completa da tabela*/




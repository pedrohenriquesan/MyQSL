CREATE DATABASE Aula2

USE Aula2

CREATE TABLE Cliente
(
	cod INT PRIMARY KEY IDENTITY (1,1), /*PRIMARY KEY NÃO PODE SE REPETIR*/
	nome VARCHAR (50),	/*IDENTITY (1,1) PREENCHE AUTOMÁTICO, INICIANDO EM 1 E DE 1 EM 1*/
	data DATE DEFAULT GETDATE(),	/*DEFAULT, GETDATE PEGA A DATA ATUAL DO CADASTRO*/
	cpf VARCHAR(20)
)

INSERT INTO Cliente (nome, cpf) VALUES ('Pedro', '129.576.216-14')

INSERT INTO Cliente (nome, cpf) VALUES ('João', '129.576.216-15')

INSERT INTO Cliente (nome, cpf) VALUES ('Igor', '129.576.216-16')

SELECT nome FROM Cliente	/*mostra somente o campo indicado*/

CREATE TABLE Produto
(
	cod INT PRIMARY KEY IDENTITY (1,1),
	descricao VARCHAR (50),
	preco DECIMAL (9,2)
)

INSERT INTO Produto (descricao, preco) VALUES ('Mouse Multilsaer', 25.50)

INSERT INTO Produto (descricao, preco) VALUES ('Teclado Multilsaer', 35.50)

INSERT INTO Produto (descricao, preco) VALUES ('Gabinete Multilsaer', 250.50)

INSERT INTO Produto (descricao) VALUES ('Cooler Multilsaer')

SELECT * FROM Produto

SELECT MAX (preco) FROM Produto		/*busca o registro com maior preco*/

SELECT MIN (preco) FROM Produto		/*busca o registro com maior preco*/

SELECT descricao, preco, cod FROM Produto ORDER BY descricao ASC	/*ordem crescente*/

SELECT descricao, preco, cod FROM Produto ORDER BY descricao DESC	/*ordem decrescente*/


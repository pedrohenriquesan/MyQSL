CREATE DATABASE Atvv6

USE Atvv6

CREATE TABLE Cliente
(
	cod INT IDENTITY (1,1) PRIMARY KEY,
	nome VARCHAR (50),
	data_nascimento DATE,
	cidade VARCHAR (50)
)

CREATE TABLE Produto
(
	cod INT IDENTITY (1,1) PRIMARY KEY,
	nome VARCHAR (50),
	preco DECIMAL (9,2)
)

CREATE TABLE Venda
(
	cod INT IDENTITY (1,1) PRIMARY KEY,
	cliente INT
)

CREATE TABLE ProdutoVenda
(	
	cod INT IDENTITY (1,1) PRIMARY KEY,
	venda INT,
	produto INT, 
	quantidade_produto INT
)

INSERT INTO Cliente (nome, data_nascimento, cidade) VALUES ('Pedro', '04/12/2002', 'Ituiutaba')
INSERT INTO Cliente (nome, data_nascimento, cidade) VALUES ('Lucas', '21/11/2002', 'Ituiutaba')
INSERT INTO Cliente (nome, data_nascimento, cidade) VALUES ('Artur', '18/02/2004', 'Piauí')
INSERT INTO Cliente (nome, data_nascimento, cidade) VALUES ('Maria', '14/05/2000', 'Uberaba')

INSERT INTO Produto (nome, preco) VALUES ('Mouse', 60.00)
INSERT INTO Produto (nome, preco) VALUES ('Teclado', 50.00)
INSERT INTO Produto (nome, preco) VALUES ('Headset', 45.00)
INSERT INTO Produto (nome, preco) VALUES ('Mousepad', 20.00)
INSERT INTO Produto (nome, preco) VALUES ('Monitor', 1200.00)
INSERT INTO Produto (nome, preco) VALUES ('Cabo', 10.00)

INSERT INTO Venda (cliente) VALUES (1)
INSERT INTO Venda (cliente) VALUES (3)
INSERT INTO Venda (cliente) VALUES (1)
INSERT INTO Venda (cliente) VALUES (2)
INSERT INTO Venda (cliente) VALUES (4)

SELECT nome FROM Produto

SELECT * FROM Venda



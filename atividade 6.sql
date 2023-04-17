CREATE DATABASE Atv6

USE Atv6

CREATE TABLE Cliente
(
	cod INT IDENTITY (1,1) PRIMARY KEY,
	nome VARCHAR (50),
	data_nascimento DATE,
	cidade VARCHAR (50)
)

CREATE TABLE Venda
(
	cod INT IDENTITY (1,1) PRIMARY KEY,
	data DATE,
	cliente INT,
	valor DECIMAL (9,2)
)

INSERT INTO Cliente (nome, data_nascimento, cidade)
VALUES ('Pedro', '04/12/2002', 'Ituiutaba')

INSERT INTO Cliente (nome, data_nascimento, cidade)
VALUES ('Maria', '24/05/2000', 'Iberlândia')

INSERT INTO Cliente (nome, data_nascimento, cidade)
VALUES ('Lucas', '24/10/2005', 'Uberaba')

INSERT INTO Venda (data, cliente, valor) VALUES ('23/01/2023', 1, 500.00)

INSERT INTO Venda (data, cliente, valor) VALUES ('23/05/2023', 1, 300.00)

INSERT INTO Venda (data, cliente, valor) VALUES ('13/03/2023', 1, 200.00)

INSERT INTO Venda (data, cliente, valor) VALUES ('03/04/2023', 1, 600.00)

SELECT Venda.cod,Venda.data, Cliente.nome, Venda.valor FROM Venda INNER JOIN
Cliente ON Cliente.cod = Venda.cliente

SELECT * FROM Venda


CREATE DATABASE Aula4

USE Aula4

CREATE TABLE Cliente
(
	cod INT IDENTITY (1,1),
	nome VARCHAR (50)
)

CREATE TABLE Venda 
(
	cod INT IDENTITY (1,1),
	cliente INT,
	valor DECIMAL (9,2)
)

INSERT INTO Cliente (nome) VALUES ('Igor')
INSERT INTO Cliente (nome) VALUES ('Maria')
INSERT INTO Cliente (nome) VALUES ('Pedro')

SELECT * FROM Cliente

INSERT INTO Venda (cliente, valor) VALUES (2, 550.00)
INSERT INTO Venda (cliente, valor) VALUES (3, 3550.00)

SELECT * FROM Venda

SELECT * FROM Venda INNER JOIN Cliente ON Venda.cliente = Cliente.cod

SELECT Venda.valor, Cliente.cod, Cliente.nome FROM Venda INNER JOIN Cliente ON Venda.cliente = Cliente.cod


CREATE DATABASE Atv3

USE Atv3

CREATE TABLE Cliente
(
	Cod INT IDENTITY (1,1) PRIMARY KEY,
	Nome VARCHAR (50),
	Data_Nascimento DATE,
	Cidade VARCHAR (50)
)

CREATE TABLE Venda
(
	Cod INT IDENTITY (1,1) PRIMARY KEY,
	Data DATE, 
	Cliente INT,
	Valor DECIMAL (9,2)
)

INSERT INTO Cliente (Nome, Data_Nascimento, Cidade) 
VALUES ('Eduardo Carlito', '26/04/1956', 'Uberlândia')

INSERT INTO Cliente (Nome, Data_Nascimento, Cidade) 
VALUES ('Débora Parth', '12/12/1988', 'Rio de Janeiro')

INSERT INTO Cliente (Nome, Data_Nascimento, Cidade) 
VALUES ('Sofia Tero', '01/03/1940', 'Uberlândia')

INSERT INTO Cliente (Nome, Data_Nascimento, Cidade) 
VALUES ('Ana Engel', '06/11/2000', 'Uberlândia')

INSERT INTO Cliente (Nome, Data_Nascimento, Cidade) 
VALUES ('João Pedro', '27/02/1999', 'São Paulo')

SELECT * FROM Cliente

INSERT INTO Venda (Data, Cliente, Valor) VALUES ('13/04/2018', 3, 500.00)

INSERT INTO Venda (Data, Cliente, Valor) VALUES ('23/01/2015', 1, 1500.00)

INSERT INTO Venda (Data, Cliente, Valor) VALUES ('01/01/2014', 2, 53.00)

INSERT INTO Venda (Data, Cliente, Valor) VALUES ('01/01/2014', 2, 130.00)

INSERT INTO Venda (Data, Cliente, Valor) VALUES ('23/05/2016', 1, 14.00)

INSERT INTO Venda (Data, Cliente, Valor) VALUES ('17/09/2011', 1, 1300.00)

INSERT INTO Venda (Data, Cliente, Valor) VALUES ('03/12/2013', 3, 75.00)

INSERT INTO Venda (Data, Cliente, Valor) VALUES ('02/02/2016', 2, 233.00)

SELECT * FROM Venda

SELECT Venda.Cod, Venda.Data, Cliente.Nome, Cliente.Cidade, Venda.Valor FROM Venda INNER JOIN 
Cliente ON Venda.Cliente = Cliente.cod

SELECT Cliente.Nome, SUM(Venda.Valor) AS Total FROM Venda INNER JOIN Cliente ON Cliente.Cod = 
Venda.Cliente GROUP BY Nome


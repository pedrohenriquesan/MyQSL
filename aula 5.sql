CREATE DATABASE Aula5

USE Aula5

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

INSERT INTO Cliente (Nome, Data_Nascimento, Cidade) VALUES ('Igor', '01/01/2000', 'Itumbiara')

INSERT INTO Cliente (Nome, Data_Nascimento, Cidade) VALUES ('Maria', '01/01/2000', 'Itumbiara')

INSERT INTO Cliente (Nome, Data_Nascimento, Cidade) VALUES ('João', '01/01/2000', 'Itumbiara')

INSERT INTO Cliente (Nome, Data_Nascimento, Cidade) VALUES ('Patrícia', '01/01/2000', 'Itumbiara')

INSERT INTO Cliente (Nome, Data_Nascimento, Cidade) VALUES ('Igor', '01/01/2000', 'Itumbiara')

SELECT * FROM Cliente

INSERT INTO Venda (Data, Cliente, Valor) VALUES ('01/01/2000', 1, 500.00)

INSERT INTO Venda (Data, Cliente, Valor) VALUES ('01/01/2000', 1, 200.00)

INSERT INTO Venda (Data, Cliente, Valor) VALUES ('01/01/2000', 2, 500.00)

INSERT INTO Venda (Data, Cliente, Valor) VALUES ('01/01/2000', 2, 50.00)

SELECT * FROM Venda

SELECT Venda.cod, Venda.Data, Cliente.Nome, Venda.Valor FROM Venda INNER JOIN Cliente ON 
Cliente.cod = Venda.cliente

SELECT Nome FROM Cliente GROUP BY Nome		/*agrupa por nome, juntando nomes repetidos*/

SELECT Cliente.Nome, SUM(Venda.Valor) AS Total FROM Venda INNER JOIN Cliente ON 
Cliente.cod = Venda.Cliente GROUP BY Nome	/*operação de soma de vendas por cliente*/

SELECT SUM(Valor) AS Total FROM Venda	/*operação de soma de todas as vendas*/

SELECT MAX(Valor) AS Total FROM Venda	/*venda mais cara*/

SELECT MIN(Valor) AS Total FROM Venda	/*venda mais barata*/

SELECT AVG(Valor) AS Total FROM Venda	/*ticket médio*/

SELECT COUNT (*) FROM Cliente	/*contagem de regitro*/

SELECT * FROM Cliente WHERE Nome = 'Igor' AND Cod = 5


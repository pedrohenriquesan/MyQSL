CREATE DATABASE Atv4

USE Atv4

CREATE TABLE Cds
(
	Cod INT IDENTITY (1,1) PRIMARY KEY,
	Nome VARCHAR (50),
	Data_Compra DATE,
	Valor_Pago DECIMAL (9,2),
	Local_Compra VARCHAR (50),
	Album VARCHAR (50)
)

CREATE TABLE Musicas
(
	Cod INT IDENTITY (1,1) PRIMARY KEY,
	Numero INT,
	Nome VARCHAR (50),
	Artista VARCHAR (50),
	Tempo VARCHAR (50)
)

INSERT INTO Cds (Nome, Data_Compra, Valor_Pago, Local_Compra, Album)
VALUES ('Xamã', '17/04/2023', 150.00, 'Loja X', 'Zodíaco')

INSERT INTO Cds (Nome, Data_Compra, Valor_Pago, Local_Compra, Album)
VALUES ('MC Cabelinho', '27/04/2023', 120.00, 'Loja Y', 'LITTLE HAIR')

INSERT INTO Cds (Nome, Data_Compra, Valor_Pago, Local_Compra, Album)
VALUES ('L7NNON', '21/04/2023', 100.00, 'Loja Z', 'Hip Hop Rare')

INSERT INTO Cds (Nome, Data_Compra, Valor_Pago, Local_Compra, Album)
VALUES ('Orochi', '11/06/2023', 180.00, 'Loja X', 'Vida Cara')

INSERT INTO Cds (Nome, Data_Compra, Valor_Pago, Local_Compra, Album)
VALUES ('Matuê', '02/11/2023', 250.00, 'Loja Y', 'Máquina do Tempo')

INSERT INTO Cds (Nome, Data_Compra, Valor_Pago, Local_Compra, Album)
VALUES ('BIN', '17/08/2023', 50.00, 'Loja W', 'Esquinas')

INSERT INTO Cds (Nome, Data_Compra, Valor_Pago, Local_Compra, Album)
VALUES ('Ret', '11/01/2023', 200.00, 'ILoja W', 'Neurótico de Guerra')

SELECT * FROM Cds

INSERT INTO Musicas (Numero, Nome, Artista, Tempo) 
VALUES (1, 'Áries', 'Xamã', '3:30')

INSERT INTO Musicas (Numero, Nome, Artista, Tempo) 
VALUES (1, 'Sagitário', 'Xamã', '3:30')

INSERT INTO Musicas (Numero, Nome, Artista, Tempo) 
VALUES (2, 'Erro', 'Cabelinho', '3:10')

INSERT INTO Musicas (Numero, Nome, Artista, Tempo) 
VALUES (3, 'Algumas Frases', 'L7', '3:50')

INSERT INTO Musicas (Numero, Nome, Artista, Tempo) 
VALUES (5, '777-666', 'Matuê', '4:32')

INSERT INTO Musicas (Numero, Nome, Artista, Tempo) 
VALUES (5, 'É sal', 'Matuê', '3:00')

SELECT * FROM Cds

SELECT Nome, Data_Compra FROM Cds

SELECT Nome, Data_Compra FROM Cds ORDER BY Data_Compra ASC

SELECT SUM(Cds.Valor_Pago) AS Total FROM Cds

SELECT Musicas.Cod, Musicas.Numero, Musicas.Nome, Musicas.Artista, Musicas.Tempo 
FROM Musicas INNER JOIN Cds ON Musicas.Numero = Cds.Cod WHERE Numero = 1

SELECT SUM(Musicas.Tempo) AS Total FROM Musicas

SELECT Musicas.Cod, Musicas.Nome, Musicas.Tempo FROM Musicas WHERE Numero = 5 ORDER BY 
Cod ASC

SELECT COUNT (*) FROM Musicas

SELECT AVG(Tempo) AS Total FROM Musicas

SELECT COUNT (*) FROM Cds

SELECT Nome FROM Musicas ORDER BY Nome ASC

SELECT Nome FROM Cds WHERE Valor_Pago = (SELECT MAX(Valor_Pago) AS Total FROM Cds)


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
VALUES ('Xamã', '17/04/2023', 150.00, 'Ituiutaba', 'Zodíaco')

INSERT INTO Cds (Nome, Data_Compra, Valor_Pago, Local_Compra, Album)
VALUES ('Xamã', '17/12/2023', 150.00, 'Ituiutaba', 'Zodíaco')

INSERT INTO Cds (Nome, Data_Compra, Valor_Pago, Local_Compra, Album)
VALUES ('MC Cabelinho', '17/04/2023', 150.00, 'Ituiutaba', 'LITTLE HAIR')

INSERT INTO Cds (Nome, Data_Compra, Valor_Pago, Local_Compra, Album)
VALUES ('L7', '17/04/2023', 150.00, 'Ituiutaba', 'Hip Hop Rare')

INSERT INTO Cds (Nome, Data_Compra, Valor_Pago, Local_Compra, Album)
VALUES ('Orochi', '11/04/2023', 150.00, 'Ituiutaba', 'Vida Cara')

INSERT INTO Cds (Nome, Data_Compra, Valor_Pago, Local_Compra, Album)
VALUES ('Orochi', '19/11/2023', 150.00, 'Ituiutaba', 'Vida Cara')

INSERT INTO Cds (Nome, Data_Compra, Valor_Pago, Local_Compra, Album)
VALUES ('BIN', '17/04/2023', 150.00, 'Ituiutaba', 'Esquinas')

INSERT INTO Cds (Nome, Data_Compra, Valor_Pago, Local_Compra, Album)
VALUES ('Ret', '17/04/2023', 150.00, 'Ituiutaba', 'Neurótico')

INSERT INTO Musicas (Numero, Nome, Artista, Tempo) 
VALUES (1, 'Malvadão 3', 'Xamã', '3:30')

INSERT INTO Musicas (Numero, Nome, Artista, Tempo) 
VALUES (5, 'Amor de Fim de Noite', 'Orochi', '3:25')

INSERT INTO Musicas (Numero, Nome, Artista, Tempo) 
VALUES (3, 'Erro', 'Cabelinho', '3:10')

INSERT INTO Musicas (Numero, Nome, Artista, Tempo) 
VALUES (4, 'Algumas Frases', 'L7', '3:50')

SELECT * FROM Cds	/*1*/

SELECT Nome, Data_Compra FROM Cds GROUP BY Nome		/*2*/

SELECT Nome, Data_Compra FROM Cds ORDER BY Data_Compra DESC 	/*3*/

SELECT SUM(Cds.Valor_Pago) AS Total FROM Cds	/*4*/

SELECT * FROM Musicas WHERE Numero = 1		/*5*/

SELECT SUM(Musicas.Tempo) AS Total FROM Musicas	/*6*/

SELECT Numero, Nome, Tempo FROM Musicas WHERE Numero = 5 GROUP BY Cod	/*7*/


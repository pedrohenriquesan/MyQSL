CREATE DATABASE Atv5

USE Atv5

CREATE TABLE Aluno
(
	cod INT IDENTITY (1,1) PRIMARY KEY,
	nome VARCHAR (50),
	data_nascimento DATE,
	cidade VARCHAR (50)
)

CREATE TABLE Matricula
(
	cod INT IDENTITY (1,1) PRIMARY KEY,
	aluno INT,
	credito INT
)

INSERT INTO Aluno (nome, data_nascimento, cidade) VALUES 
('Pedro', '04/12/2002', 'Ituiutaba')
INSERT INTO Aluno (nome, data_nascimento, cidade) VALUES 
('Arthur', '04/12/2004', 'Ituuiutaba')
INSERT INTO Aluno (nome, data_nascimento, cidade) VALUES 
('Mateus', '04/12/1998', 'Ituuiutaba')
INSERT INTO Aluno (nome, data_nascimento, cidade) VALUES 
('Isabela', '04/12/2005', 'Ituuiutaba')

INSERT INTO Matricula (aluno, credito) VALUES (1, 10)
INSERT INTO Matricula (aluno, credito) VALUES (2, 15)
INSERT INTO Matricula (aluno, credito) VALUES (3, 8)
INSERT INTO Matricula (aluno, credito) VALUES (4, 12)

SELECT Matricula.cod, Aluno.nome FROM Aluno INNER JOIN Matricula 
ON Matricula.aluno = Aluno.cod 

SELECT nome FROM Aluno GROUP BY nome

SELECT Aluno.nome, SUM(Matricula.credito) AS Total FROM Matricula INNER JOIN Aluno
ON Matricula.aluno = Aluno.cod


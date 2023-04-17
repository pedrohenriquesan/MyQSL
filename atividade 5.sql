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


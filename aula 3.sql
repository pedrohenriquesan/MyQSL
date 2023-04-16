CREATE DATABASE Aula3

USE Aula3

CREATE TABLE setor
(
	cod INT PRIMARY KEY IDENTITY (1,1),
	nome VARCHAR (50)
)

CREATE TABLE cargo
(
	cod INT PRIMARY KEY IDENTITY (1,1),
	titulo VARCHAR (50),
	setor INT
)

CREATE TABLE funcionario 
(
	cod INT PRIMARY KEY IDENTITY (1,1),
	nome VARCHAR (50),
	cargo INT
)

INSERT INTO setor (nome) VALUES ('Recursos Humanos')

SELECT * FROM setor

INSERT INTO cargo (titulo, setor) VALUES ('Secretária', 1)

SELECT * FROM cargo

INSERT INTO funcionario (nome, cargo) VALUES ('Maria Andrade', 1)

SELECT * FROM funcionario

INSERT INTO Funcionario (nome, cargo) VALUES ('João Andrade', 2)


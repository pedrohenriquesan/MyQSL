CREATE DATABASE Atv2

USE Atv2

CREATE TABLE Aluno
(
	Cod INT PRIMARY KEY IDENTITY (1,1),
	Nome VARCHAR (100),
	Data_nascimento DATE,
	Numero_de_matricula VARCHAR (30),
	Curso VARCHAR (30),
	Cidade VARCHAR (30)
)

CREATE TABLE Curso
(
	Cod INT PRIMARY KEY IDENTITY (1,1),
	TItulo VARCHAR (100),
	Periodo VARCHAR (15)
)

INSERT INTO Aluno (Nome, Data_Nascimento, Numero_de_matricula, Curso, Cidade)
VALUES ('Eduardo Carlito', '26/04/1956', '49.448.418/0001-55', 'Engenharia El�trica', 'Uberl�ndia')

INSERT INTO Aluno (Nome, Data_Nascimento, Numero_de_matricula, Curso, Cidade)
VALUES ('D�bora Parth', '12/12/1988', '78.948.233/0001-08', 'Sistemas de Informa��o', 'Rio de Janeiro')

INSERT INTO Aluno (Nome, Data_Nascimento, Numero_de_matricula, Curso, Cidade)
VALUES ('Sofia Tero', '01/03/1940', '', 'Engenharia El�trica', 'Uberl�ndia')

INSERT INTO Aluno (Nome, Data_Nascimento, Numero_de_matricula, Curso, Cidade)
VALUES ('Ana Engel', '06/11/2000', '62.446.740/0001-03', 'Arquitetura', 'Uberl�ndia')

INSERT INTO Aluno (Nome, Data_Nascimento, Numero_de_matricula, Curso, Cidade)
VALUES ('Jo�o Pedro', '27/02/1999', '', 'Sistemas de Informa��o', 'S�o Paulo')

SELECT * FROM Aluno

INSERT INTO Curso (TItulo, Periodo) VALUES ('Sistemas de Informa��o', 'Noturno')
INSERT INTO Curso (TItulo, Periodo) VALUES ('Engenharia El�trica', 'Noturno')
INSERT INTO Curso (TItulo, Periodo) VALUES ('Agronomia', 'Integral')
INSERT INTO Curso (TItulo, Periodo) VALUES ('Engenharia de Produ��o', 'Noturno')
INSERT INTO Curso (TItulo, Periodo) VALUES ('Arquitetura', 'Integral')

SELECT * FROM Curso

UPDATE Aluno SET Numero_de_matricula = 'Entrar em contato' WHERE Numero_de_matricula = ''

/*Os alunos do munic�pio de Uberl�ndia s�o, em sua predomin�ncia, do sexo masculino ou feminino? Demonstre
por meio do comando SELECT*/

DELETE FROM Aluno WHERE Cod = 4

SELECT * FROM Aluno


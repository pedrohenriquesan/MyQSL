CREATE DATABASE Atv1	/*criação bando de dados*/

USE Atv1	/*uso do banco de dados*/

CREATE TABLE Funcionario	/*criação da tabela*/
(
	Cod INT,
	Nome VARCHAR (100),
	Data_Nascimento DATE,
	CPF VARCHAR (20),
	Sexo VARCHAR (1),
	Cidade VARCHAR (30),
	Salario DECIMAL (9,2)
)

INSERT INTO Funcionario (Cod, Nome, Data_Nascimento, CPF, Sexo, Cidade, Salario)	/*inserção de registros*/
VALUES (1, 'Richard M. Rathjen', '26/04/1956', '837.842.500-25', 'M', 'Manaus', 3500.00)

INSERT INTO Funcionario (Cod, Nome, Data_Nascimento, CPF, Sexo, Cidade, Salario)
VALUES (2, 'Betty F. Blanco', '12/12/1988', '825.783.800-40', 'F', 'Itaúna', 1200.00)

INSERT INTO Funcionario (Cod, Nome, Data_Nascimento, CPF, Sexo, Cidade, Salario)	/*'' indica null*/
VALUES (3, 'Brett W. Thomas', '01/03/1940', '', 'M', 'Manaus', 964.00)

INSERT INTO Funcionario (Cod, Nome, Data_Nascimento, CPF, Sexo, Cidade, Salario)
VALUES (4, 'Harold A. Quinn', '06/11/2000', '653.916.510-26', 'M', 'Manaus', 12000.00)

INSERT INTO Funcionario (Cod, Nome, Data_Nascimento, CPF, Sexo, Cidade, Salario)
VALUES (5, 'Dominic E. White', '27/02/1999', '', 'M', 'Manaus', 4300.00)

INSERT INTO Funcionario (Cod, Nome, Data_Nascimento, CPF, Sexo, Cidade, Salario)
VALUES (6, 'Christine H. Corey', '13/04/1980', '975.737.340-00', 'F', 'São Paulo', 5973.00)

INSERT INTO Funcionario (Cod, Nome, Data_Nascimento, CPF, Sexo, Cidade, Salario)
VALUES (7, 'Harry C. Woodall', '11/09/1992', '', 'M', 'Itaúna', 3156.00)

SELECT * FROM Funcionario WHERE Sexo = 'F'	/*seleção de registro de mulheres*/

SELECT * FROM Funcionario WHERE CPF = ''	/*seleção de registro com cpf vazio*/

UPDATE Funcionario SET CPF = 'Entrar em contato' WHERE CPF = ''		/*atualização de registro com cpf vazio para entrar em contato*/

/*Os funcionários do município de Manaus são, em sua predominância, do sexo masculino ou 
feminino?*/

DELETE FROM Funcionario WHERE Cod = 4	/*deleção de registro com código de n° 4*/


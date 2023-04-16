CREATE DATABASE Atv1	/*cria��o bando de dados*/

USE Atv1	/*uso do banco de dados*/

CREATE TABLE Funcionario	/*cria��o da tabela*/
(
	Cod INT,
	Nome VARCHAR (100),
	Data_Nascimento DATE,
	CPF VARCHAR (20),
	Sexo VARCHAR (1),
	Cidade VARCHAR (30),
	Salario DECIMAL (9,2)
)

INSERT INTO Funcionario (Cod, Nome, Data_Nascimento, CPF, Sexo, Cidade, Salario)	/*inser��o de registros*/
VALUES (1, 'Richard M. Rathjen', '26/04/1956', '837.842.500-25', 'M', 'Manaus', 3500.00)

INSERT INTO Funcionario (Cod, Nome, Data_Nascimento, CPF, Sexo, Cidade, Salario)
VALUES (2, 'Betty F. Blanco', '12/12/1988', '825.783.800-40', 'F', 'Ita�na', 1200.00)

INSERT INTO Funcionario (Cod, Nome, Data_Nascimento, CPF, Sexo, Cidade, Salario)	/*'' indica null*/
VALUES (3, 'Brett W. Thomas', '01/03/1940', '', 'M', 'Manaus', 964.00)

INSERT INTO Funcionario (Cod, Nome, Data_Nascimento, CPF, Sexo, Cidade, Salario)
VALUES (4, 'Harold A. Quinn', '06/11/2000', '653.916.510-26', 'M', 'Manaus', 12000.00)

INSERT INTO Funcionario (Cod, Nome, Data_Nascimento, CPF, Sexo, Cidade, Salario)
VALUES (5, 'Dominic E. White', '27/02/1999', '', 'M', 'Manaus', 4300.00)

INSERT INTO Funcionario (Cod, Nome, Data_Nascimento, CPF, Sexo, Cidade, Salario)
VALUES (6, 'Christine H. Corey', '13/04/1980', '975.737.340-00', 'F', 'S�o Paulo', 5973.00)

INSERT INTO Funcionario (Cod, Nome, Data_Nascimento, CPF, Sexo, Cidade, Salario)
VALUES (7, 'Harry C. Woodall', '11/09/1992', '', 'M', 'Ita�na', 3156.00)

SELECT * FROM Funcionario WHERE Sexo = 'F'	/*sele��o de registro de mulheres*/

SELECT * FROM Funcionario WHERE CPF = ''	/*sele��o de registro com cpf vazio*/

UPDATE Funcionario SET CPF = 'Entrar em contato' WHERE CPF = ''		/*atualiza��o de registro com cpf vazio para entrar em contato*/

/*Os funcion�rios do munic�pio de Manaus s�o, em sua predomin�ncia, do sexo masculino ou 
feminino?*/

DELETE FROM Funcionario WHERE Cod = 4	/*dele��o de registro com c�digo de n� 4*/


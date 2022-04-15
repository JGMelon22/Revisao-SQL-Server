/* INSERT INTO */ 

-- CRIANDO A TABELA TEMPORARIA
CREATE TABLE Aula
(
	Id INT PRIMARY KEY,
	Nome VARCHAR(100)
);

-- INSERINDO DADOS NA TABELA RECEM CRIADA
INSERT INTO Aula(Id, Nome)
VALUES(1, 'História'),
	  (2, 'Geografia'),
	  (3, 'Sociologia');

-- CRIANDO A SEGUNDA TABELA PARA EXECUTAR O INSERT...
-- COM OS DADOS DE UMA JÁ EXISTENTE 
CREATE TABLE AulaNoite
(
	Id INT PRIMARY KEY,
	Nome VARCHAR(100)
);

-- FAZENDO A INSERÇÃO
INSERT INTO AulaNoite(Id, Nome)
SELECT *
FROM Aula;

-- Desafio:
/* Crie uma tabela nova;
*  Insira 3 linhas de dados ao mesmo tempo;
*  Crie uma segunda tabela, com o tipo de dado igual a primeira;
*  Insira uma linha de dado nova;
*  Copie os dados da tabela original para a recem criada usando o INSERT.
*/

-- CRIANDO A TABELA 
CREATE TABLE AvioesEUA
(
	Ano INT NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	Fabricante VARCHAR(100),
	Descontinuado BIT DEFAULT 0
);

-- POPULANDO A TABELA
INSERT INTO AvioesEUA(Ano, Nome, Fabricante, Descontinuado)
VALUES(1958, '707', 'Boeing', 1),
	  (2011, '787', 'Boeing', 0),
	  (1990, 'MD-11', 'McDonnell Douglas', 1);
	  

-- CRIANDO A SEGUNDA TABELA
CREATE TABLE AvioesMundiais
(
    Ano INT NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	Fabricante VARCHAR(100),
	Descontinuado BIT DEFAULT 0
);

-- POPULANDO A TABELA NOVA
INSERT INTO AvioesMundiais(Ano, Nome, Fabricante, Descontinuado)
VALUES(1992, 'A330', 'Airbus', 0);

-- COPIANDO DA TABELA ORIGINAL
INSERT INTO AvioesMundiais 
SELECT *
FROM AvioesEUA;

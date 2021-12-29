-- Manipulação de strings
-- Concatenar
SELECT
	CONCAT(FirstName, ' ', LastName) AS 'Person full name'
FROM Person.Person;

-- Caixa alta e caixa baixa
SELECT
	UPPER(FirstName) AS 'Gritando o primeiro nome',
	LOWER(LastName) AS 'Sussurrando o último nome'
FROM Person.Person;

-- Tamanho da palavra
SELECT
	LEN(FirstName) AS 'Tamanho do primeiro nome'
FROM Person.Person;

-- Substring
SELECT
	SUBSTRING(FirstName, 0, 4) AS '3 Letras iniciais do primeiro nome'
FROM Person.Person;


-- Trim de maluco: não usem drogas crianças!
SELECT
	TRIM(CONCAT('   ', FirstName, ' ', LastName)) AS 'Person full name'
FROM Person.Person;

-- Replace
SELECT
	REPLACE(ProductNumber, '-', '*-*') AS 'Numeração do produto'
FROM Production.Product;

-- Minha vez:
/*
 * Encontrar uma tabela e fazer um pagode
 * */

SELECT
	LEN(Name) AS 'Tamanho da string ''Nome original''',
	REPLACE(Name, ' ', '|=|') AS 'Nome doido',
	LOWER(Style) AS 'Style em caixa baixa',
	UPPER(Color) AS 'Cor em caixa alta',
	CONCAT('U$D ', ListPrice) AS 'Valor formatado',
	SUBSTRING(ProductNumber, 0, 4) AS '3 Primeiros dígitos do ''ProductNumber'''
FROM Production.Product;

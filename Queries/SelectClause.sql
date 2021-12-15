USE AdventureWorks2019;

/* Mostra o bd atual */
SELECT DB_NAME() AS [Current Database];
SELECT GETDATE();


/* SELECT clause */
SELECT *
FROM Person.Person;

SELECT
	COUNT(Title),
	Title
FROM Person.Person
WHERE Title IS NOT NULL
GROUP BY Title;

-- Describe table
exec sp_columns Person;

-- Select estrela
SELECT *
FROM Person.EmailAddress;

-- Exercicio 1
-- Nomes mais comuns dos clientes
-- Selecionar o primeiro e o último nome
SELECT
	FirstName AS '- First Name -',
	LastName AS '- Last Name -'
FROM Person.Person;

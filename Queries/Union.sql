/* UNION */
SELECT
	ProductID,
	Name,
	ProductNumber
FROM Production.Product
WHERE Name LIKE '%Chain%'
UNION
SELECT
	ProductID,
	Name,
	ProductNumber
FROM Production.Product
WHERE Name LIKE '%Decal%';

-- Exemplo 2
SELECT
	FirstName,
	Title,
	MiddleName
FROM Person.Person
WHERE Title = 'Mr.'
UNION
SELECT
	FirstName,
	Title,
	MiddleName
FROM Person.Person
WHERE MiddleName = 'A';

-- Exercicio: "brincar" com Union em qualquer tabela
SELECT
	AddressID,
	AddressLine1,
	City
FROM Person.Address
WHERE City = 'Ballard'
UNION
SELECT
	AddressID,
	AddressLine1,
	City
FROM Person.Address
WHERE AddressLine1 LIKE 'M%';

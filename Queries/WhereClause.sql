/* WHERE Clause */
-- E operadores lógicos
SELECT 	*
FROM Person.Person
WHERE LastName = 'Miller';

--
SELECT 	*
FROM Person.Person
WHERE LastName = 'Miller'
AND FirstName = 'Anna';

--
SELECT *
FROM Production.Product
WHERE Color = 'blue'
OR Color = 'black';

--
SELECT *
FROM Production.Product
WHERE ListPrice >= 1500;

--
SELECT *
FROM Production.Product
WHERE ListPrice >= 1500
AND ListPrice < 5000;

-- Forma mais organizada
SELECT *
FROM Production.Product
WHERE ListPrice BETWEEN 1500
				AND 5000;

-- Diferente
SELECT *
FROM Production.Product
WHERE Color <> 'red';

/* Desafio 1*/
-- Peças com mais de 500kg
-- Mas a baixo de 700kg para inspecao
SELECT Name AS 'Product Name'
FROM Production.Product
WHERE Weight > 500
AND Weight <= 700;

/* Desafio 2 */
-- Empregados casados e asalariados
SELECT *
FROM HumanResources.Employee e
WHERE MaritalStatus = 'M'
AND SalariedFlag = 1;


/* Desafio 3 */
-- Procurar o usuário Peter Krebs
SELECT *
FROM Person.Person p
WHERE FirstName = 'Peter'
AND LastName = 'Krebs'

SELECT *
FROM Person.EmailAddress ea
WHERE BusinessEntityID = 26;

-- Usando Join (nesse caso, muita gambiarra)
SELECT
	p.BusinessEntityID,
	ea.BusinessEntityID,
	p.FirstName,
	p.LastName
FROM Person.Person p
INNER JOIN Person.EmailAddress ea
	ON p.BusinessEntityID = ea.BusinessEntityID
WHERE p.BusinessEntityID = 26;

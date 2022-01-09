-- Subqueries

/*
 * Montar um relatório de todos os produtos que tem
 * o preço de venda acima da média
*/

/* Query 1
SELECT
	AVG(ListPrice)
FROM Production.Product p;

Query 2
SELECT *
FROM Production.Product p
WHERE ListPrice > 438.66;
*/

SELECT *
FROM Production.Product p
WHERE ListPrice > (SELECT AVG(ListPrice)
				   FROM Production.Product)

/*
 * Encontrar o nome dos funcionários
 * que tem o cargo de "Desing Engineer"
 */

-- SELECT * Query 1
-- FROM HumanResources.Employee e
-- WHERE JobTitle = 'Design Engineer';

-- SELECT * Query 2
-- FROM Person.Person p
-- WHERE BusinessEntityID IN (5, 6, 15);

SELECT
	FirstName
FROM Person.Person
WHERE BusinessEntityID IN (SELECT BusinessEntityID
						   FROM HumanResources.Employee e
					       WHERE JobTitle = 'Design Engineer')

-- Use Join quando possível, pois é mais fácil de entender
SELECT
	p.FirstName
FROM HumanResources.Employee e
INNER JOIN Person.Person p
	ON e.BusinessEntityID = p.BusinessEntityID
AND e.JobTitle = 'Design Engineer';

-- Desafio 1
/*
 * Encontrar todos os endereços que estão no estado
 * de "Alberta". Traga todas as informações
 */

SELECT *
FROM Person.Address; --Tabela 1

SELECT *
FROM Person.StateProvince sp; -- Tabela 2

-- Com Inner Join
SELECT *
FROM Person.Address a
INNER JOIN Person.StateProvince sp
	ON a.StateProvinceID = sp.StateProvinceID
AND sp.Name = 'Alberta';

-- Com Subquery
SELECT *
FROM Person.Address a
WHERE StateProvinceID IN (SELECT StateProvinceID
	   					  FROM Person.StateProvince sp
						  WHERE Name = 'Alberta');

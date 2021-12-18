/* Having */

/*
* HAVING X WHERE
* Explicacao: o group by eh aplicado
* depois que os dados ja foram agrupados,
* enquanto where eh aplicado antes dos dados
* serem agrupados
*/

SELECT
	FirstName,
	COUNT(FirstName) AS 'Quantity'
FROM Person.Person
GROUP BY FirstName
HAVING COUNT(FirstName) > 10
ORDER BY COUNT(FirstName) ASC;

-- Quais produtos que no total de vendas
-- estão entre 162k a 500k
SELECT
	TOP 10 ProductID,
		   SUM(LineTotal) AS 'Sales total'
FROM Sales.SalesOrderDetail
GROUP BY  ProductID
HAVING SUM(LineTotal) BETWEEN 162000 AND 500000;

-- Quais nomes possuem uma ocorrencia maior que 10 vezes,
-- mas somente onde o titulo é 'Mr';
SELECT
	FirstName,
	COUNT(FirstName) AS 'Quantity'
FROM Person.Person
WHERE Title = 'Mr.'
GROUP BY FirstName
HAVING COUNT(FirstName) > 10;

-- Desafio 1
/*
* Queremos identificar os stateProvinceId com o maior
* numero de cadastros no sistema, para isso eh preciso
* encontrar quais stateProvinceId estao registradas mais
* de 1000 vezes
*/
SELECT
	City,
	StateProvinceID,
	COUNT(StateProvinceID) AS 'Quantity'
FROM Person.Address
GROUP BY StateProvinceID
HAVING COUNT(StateProvinceID) > 1000;

-- Desafio 2
/*
* Sendo que se trata de uma multinacional,
* os gerentes querem saber quais produtos
* (productId) nao estao trazendo a media de
* no minimo 1 milhao em total de vendas (lineTotal)
*/
SELECT
	ProductID,
	AVG(LineTotal) AS 'Average sales'
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING AVG(LineTotal) < 1000000;

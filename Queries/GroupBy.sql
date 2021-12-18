/* GROUP BY */
SELECT
	SpecialOfferID,
	SUM(UnitPrice) "Soma do preco unitario"
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID
ORDER BY SpecialOfferID ASC;

--
SELECT
	SpecialOfferID,
	UnitPrice
FROM Sales.SalesOrderDetail
WHERE SpecialOfferID = 9;

-- Contar quantos produtos foram vendidos ate hoje
SELECT
	ProductID,
	COUNT(ProductID) AS 'ProductID quantity'
FROM Sales.SalesOrderDetail
GROUP BY ProductID;

-- Contar quantos nomes temos cadastrados
SELECT
	FirstName AS 'Person first name',
	COUNT(FirstName) AS 'Quantity'
--	CONCAT(FirstName, ' ', MiddleName, LastName) AS 'Full name'
FROM Person.Person
GROUP BY FirstName;

-- Media de preco para os produtos da cor prata
SELECT
	CONCAT('U$D ', AVG(ListPrice)) AS 'Average price'
FROM Production.Product
WHERE Color = 'Silver';

/* Desafio 1 */
-- Quantas pessoas tem o mesmo nome do meio
-- agrupando as pelo seu nome do meio
SELECT
	MiddleName,
	COUNT(MiddleName) AS 'Quantity'
FROM Person.Person
GROUP BY MiddleName;

/* Desafio 2 */
-- Qual a quantidade media de vendas de cada produto?
SELECT
	ProductID,
	AVG(OrderQty) AS 'Quantity'
FROM Sales.SalesOrderDetail
GROUP BY ProductID;

/* Desafio 3 */
-- Quais as 10 vendas que obtiveram
-- os maiores valores de venda por produto
-- do mais caro ao mais barato
SELECT
	TOP 10 ProductID,
	CONCAT('U$D ', SUM(LineTotal)) AS 'Summed price'
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY SUM(LineTotal) DESC;

/* Desafio 4 */
-- Quantos produtos e qual a quantidade media de produtos
-- temos cadastrados no WorkOrder, agrupando os por ProductId
SELECT
	ProductID,
	COUNT(ProductID) AS 'Quantity',
	AVG(StockedQty) AS 'Average quantity'
FROM Production.WorkOrder
GROUP BY ProductID;

 /* As */
SELECT
	TOP 10 ListPrice AS 'Product Price'
FROM Production.Product p

-- Media do preco de venda
SELECT
	TOP 10 CONCAT('U$D ', AVG(ListPrice)) AS 'Average price'
FROM Production.Product;

-- Desafio 1
/*
* Encontrar o nome e o sobrenome
* da tabela Person.Person e colocar
* um alias em portugues
*/
SELECT
	FirstName AS 'Primeiro nome',
	LastName AS 'Sobrenome'
FROM Person.Person;

-- Desafio 2
/*
* Encontre o productNumber da tabela
* Production.Product e renomear para 'codigo do produto'
*/
SELECT ProductID AS 'Código do produto'
FROM Production.Product;

-- Desafio 3
/*
* Entrar na tabela sales.salesOrderDetail
* e econtrar a coluna unitPrice e renomear
* para 'preco unitario'
*/
SELECT UnitPrice AS 'Preço unitário'
FROM Sales.SalesOrderDetail;

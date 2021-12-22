/* Inner Join */
-- Buscar Por BusinessEntityID,
-- FirstName, LastName
-- e EmailAddress
SELECT
	p.BusinessEntityID,
	FirstName,
	LastName,
	EmailAddress
FROM Person.Person p
INNER JOIN Person.EmailAddress ea
	ON p.BusinessEntityID = ea.BusinessEntityID;

-- Buscar os nomes dos produtos e as informacoes
-- de suas subcategorias
-- ListPrice, Nome do produto, Nome da Subcategoria
SELECT
	ListPrice,
	pp.Name,
	pps.Name
FROM Production.Product pp
INNER JOIN Production.ProductSubcategory pps
	ON pp.ProductSubcategoryID = pps.ProductCategoryID;

-- Junta Geral => Produto cartesiano
SELECT
	TOP 10 *
FROM Person.BusinessEntityAddress bea
INNER JOIN Person.Address a
	ON bea.AddressID = a.AddressID;

-- Desafio 1
/*
* Incluir o BusinessIntityId, Name,
* PhoneNumberTypeId e PhoneNumber
* usando join com as duas tabelas abaixo
*/
SELECT
	TOP 10 *
FROM Person.PhoneNumberType pnt;

SELECT
	TOP 10 *
FROM Person.PersonPhone pp;

-- Join goes here:
SELECT
	TOP 10
	pp.BusinessEntityID,
	pnt.Name,
	pnt.PhoneNumberTypeID,
	pp.PhoneNumber
FROM Person.PhoneNumberType pnt
INNER JOIN Person.PersonPhone pp
	ON pnt.PhoneNumberTypeID = pp.PhoneNumberTypeID;

-- Desafio 2
/*
* Trazer o AdressId, City
* StateProvinceId e Nome do estado
* usando join com as duas tabelas abaixo
 */
SELECT
	TOP 10 *
FROM Person.StateProvince sp;

SELECT
	TOP 10 *
FROM Person.Address a;

-- Join code goes here:
SELECT
	TOP 10
	a.AddressID,
	a.City,
	sp.StateProvinceID,
	sp.Name
FROM Person.StateProvince sp
INNER JOIN Person.Address a
	ON sp.StateProvinceID = a.StateProvinceID
ORDER BY a.AddressID;

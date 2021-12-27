/* Tipos de Joins */
-- Outer Join

-- Quais pessoas possuem um cartão de crédito registrado?
-- INNER JOIN -> 19118 Linhas
SELECT *
FROM Person.Person p
INNER JOIN Sales.PersonCreditCard pcc
	ON p.BusinessEntityID = pcc.BusinessEntityID;

-- LEFT JOIN -> 19972 Linhas
SELECT *
FROM Person.Person p
LEFT JOIN Sales.PersonCreditCard pcc
	ON p.BusinessEntityID = pcc.BusinessEntityID;

-- Galera que não tem um CC
SELECT *
FROM Person.Person p
LEFT JOIN Sales.PersonCreditCard pcc
	ON p.BusinessEntityID = pcc.BusinessEntityID
WHERE pcc.BusinessEntityID IS NULL;

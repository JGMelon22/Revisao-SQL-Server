/* ORDER BY */
SELECT
	FirstName,
	LastName
FROM Person.Person
ORDER BY FirstName ASC, LastName DESC;

--
SELECT
	FirstName,
	LastName
FROM Person.Person
ORDER BY MiddleName ASC;

/* Desafio 1 */
-- Obter o productID dos 10 produtos mais caros
-- listando do mais caro ao mais barato
SELECT
	TOP 10 ProductID
FROM Production.Product p
ORDER BY ProductID DESC;

/* Desafio 2 */
-- Obter o nome e o numero do produto dos produtos
-- que tem o ProductID entre 1 a 4
SELECT
	Name,
	ProductID
FROM Production.Product p
WHERE ProductID <= 4
ORDER BY ProductID;

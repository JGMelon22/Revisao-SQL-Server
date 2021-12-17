/* Desafios conceitos básicos */
/* Desafio 1 */
-- Quantos produtos cadastrados custam mais de 1.5k?
SELECT *
FROM Production.Product
WHERE ListPrice > 1500;

/* Desafio 2 */
-- Quantas pessoas possuem a letra P como inicial no sobrenome?
SELECT
	REPLACE(COUNT(*), ',', '.')
FROM Person.Person
WHERE LastName LIKE 'p%';


/* Desafio 3 */
-- Quantas cidades unicas estao cadastrados os clientes?
SELECT COUNT(DISTINCT City)
FROM Person.Address;

/* Desafio 4 */
-- Quais são as cidades únicas cadastradas no sistema?
SELECT DISTINCT(City)
FROM Person.Address
ORDER BY City ASC;

/* Desafio 5 */
-- Quantos produtos vermelhos possuem o preco entre
-- 500 a 1000 doletas?
SELECT
	COUNT(*)
FROM Production.Product
WHERE Color = 'red'
	AND ListPrice BETWEEN 500
				  AND 1000;

/* Desafio 6 */
-- Quantos produtos tem a palavra "road" em seu nome?
SELECT
	COUNT(*)
FROM Production.Product
WHERE Name LIKE '%road%';

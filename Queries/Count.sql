/* COUNT */

SELECT
COUNT(*) AS 'Conta geral'
FROM Person.Person p;

-- Geral
SELECT
	Title AS 'Titulo'
FROM Person.Person p;

-- Filtrando repetições
SELECT
	DISTINCT(Title) AS 'Titulo usando distinct'
FROM Person.Person p;

/* Desafio 1 */
-- Quantos produtos temos cadastrados
-- em nossa tabela de produtos
SELECT
	COUNT(*) AS 'All products count'
FROM Production.Product p;

/* Desafio 2 */
-- Quantos tamanhos de produtos
-- temos na tabela de produtos
SELECT
	COUNT(Size) AS 'Size'
FROM Production.Product p;

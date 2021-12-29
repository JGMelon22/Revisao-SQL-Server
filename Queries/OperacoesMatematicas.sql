-- Operações matemáticas
SELECT
	UnitPrice + LineTotal AS 'Somando Preço unitário com o total'
FROM Sales.SalesOrderDetail;

-- Literal SQL (Math) Examples
SELECT ((1 + 1) * 2) AS 'Literal SQL';

-- Modos de arredondar
-- Round pede a precisão decimal!
SELECT
	ROUND(LineTotal, 2) AS 'Usando Round'
FROM Sales.SalesOrderDetail;

-- Ceiling = teto em inglês. Fica a dica para ajudar a gravar :)
SELECT
	CEILING(LineTotal) AS 'Usando Ceiling'
FROM Sales.SalesOrderDetail;
-- Floor = chão em inglês. Fica a dica para ajudar a gravar :)
SELECT
	FLOOR(LineTotal) AS 'Usando Floor'
FROM Sales.SalesOrderDetail;

-- Raiz quadrada
SELECT SQRT(10);

-- Desafio 1:
/* Procurar uma outra tabela com valores
 * numéricos e fazer um pagode com o "ROUND"
 * */

SELECT
	ROUND(Weight, 2) AS 'Peso arredondado usando o ''ROUND'''
FROM Production.Product
WHERE Weight IS NOT NULL;

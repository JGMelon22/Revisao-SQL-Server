/* DatePart */
-- Tabela que usaremos
SELECT
	TOP 10 *
FROM Sales.SalesOrderHeader;

-- Extrair o mês da data do pedido
SELECT
	SalesOrderID,
	DATEPART(MONTH, OrderDate) AS 'Ano do pedido'
FROM Sales.SalesOrderHeader;

-- Obtendo o nome do mês
SELECT
	SalesOrderID,
	DATENAME(MONTH, OrderDate) AS 'Ano do pedido'
FROM Sales.SalesOrderHeader;

-- Organizar a média de valores devidos ao mês
SELECT
	CONCAT('R$ ', AVG(TotalDue)) AS 'Média de preços ao mês',
	DATEPART(MONTH, DueDate) AS 'Mês'
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(MONTH, DueDate)
ORDER BY DATEPART(MONTH, DueDate); -- Ou 'Mês'

-- Organizar a média de valores devidos ao ano
SELECT
	CONCAT('R$ ', AVG(TotalDue)) AS 'Média de preços ao mês',
	DATEPART(YEAR, DueDate) AS 'Ano'
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(YEAR, DueDate)
ORDER BY DATEPART(YEAR, DueDate); -- Ou 'Ano'

-- Organizar a média de valores devidos ao dia
SELECT
	CONCAT('R$ ', AVG(TotalDue)) AS 'Média de preços ao mês',
	DATEPART(DAY, DueDate) AS 'Dia'
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(DAY, DueDate)
ORDER BY DATEPART(DAY, DueDate); -- Ou 'Dia'

-- Desafio 1:
/* Encontrar outra tabela no banco que possui data
 * e extrair mês e ano dessa coluna
 */
SELECT
	DATEPART(MONTH, LastReceiptDate) 'Mês de emissão da nota fiscal',
	DATEPART(YEAR, LastReceiptDate) 'Ano de emissão da nota fiscal'
FROM  Purchasing.ProductVendor;

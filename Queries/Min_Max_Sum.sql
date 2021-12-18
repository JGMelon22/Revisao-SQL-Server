/* Min, Max, Sum */

SELECT
	TOP 10
	SUM(LineTotal) AS "Total"
FROM Sales.SalesOrderDetail;

--
SELECT
	TOP 10
	MAX(LineTotal) AS "Max value"
FROM Sales.SalesOrderDetail;

--
SELECT
	TOP 10
	MIN(LineTotal) AS "Min value"
FROM Sales.SalesOrderDetail;

/* Min, Max, Sum */

SELECT
	TOP 10
	SUM(LineTotal) AS "Total"
FROM Sales.SalesOrderDetail;

--
SELECT
	TOP 10
	MAX(LineTotal) AS "Max value"
FROM Sales.SalesOrderDetail;

--
SELECT
	TOP 10
	AVG(LineTotal) AS "Average value"
FROM Sales.SalesOrderDetail;

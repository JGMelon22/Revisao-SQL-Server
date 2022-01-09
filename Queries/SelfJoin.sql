-- Selft Join
/*
 *
 */

USE Northwind;

SELECT *
FROM Customers;

/*
 * Selecionar todos os clientes que
 * moram na mesma região
 */

SELECT
	A.ContactName,
	B .ContactName,
	A.Region,
	B.Region
FROM Customers A, Customers B
WHERE A.Region = B.Region;

/*
 * Buscar pelo nome e data de contratação de todos
 * os funcionários que foram contratados no mesmo ano
 */

SELECT
	CONCAT(emp1.FirstName , ' ', emp1.LastName) AS 'Name',
	CONCAT(emp2.FirstName , ' ', emp2.LastName) AS 'Name',
	emp1.HireDate AS 'Hire date',
	emp2.HireDate AS 'Hire date'
FROM Employees emp1, Employees emp2
WHERE DATEPART(YEAR, emp1.HireDate) = DATEPART(YEAR, emp2.HireDate);

-- Desafio 1
/*
 * Na tabela "detalhes do pedido", quais
 * produtos tem o mesmo percentual de desconto
 */

SELECT
	A.ProductID,
	B.ProductID,
	A.Discount,
	B.Discount
FROM [Order Details] A, [Order Details] B
WHERE A.Discount = B.Discount;

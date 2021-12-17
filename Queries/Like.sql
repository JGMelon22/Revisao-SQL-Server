/* LIKE */

-- https://www.w3schools.com/mysql/mysql_like.asp

SELECT
	FirstName,
	LastName
FROM Person.Person
WHERE FirstName LIKE 'ovi%';

--
SELECT
	FirstName,
	LastName
FROM Person.Person
WHERE FirstName LIKE '%to';

--
SELECT
	FirstName,
	LastName
FROM Person.Person
WHERE FirstName LIKE '%essa%';,

--
SELECT
	FirstName,
	LastName
FROM Person.Person
WHERE FirstName LIKE '%ro_';

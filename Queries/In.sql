/* IN */

SELECT *
FROM Person.Person
WHERE BusinessEntityID
	IN(2, 7, 13);

--
SELECT *
FROM Person.Person
WHERE BusinessEntityID
	NOT IN(100, 110, 1300);

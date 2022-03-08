Use SimpleOrder

SELECT FirstName, LastName, Birthdate, CustomerId
	FROM Customer;
	

SELECT FirstName, LastName, Birthdate, Email, CustomerId
	FROM Customer
	WHERE LastName LIKE '%eville';



SELECT BirthDate, FirstName
FROM Customer
	WHERE Birthdate < DATEADD(year, -25, GETDATE()) AND Birthdate >  DATEADD(year, -45, GETDATE());
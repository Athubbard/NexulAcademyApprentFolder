Use SimpleOrder;

SELECT TotalPrice 
FROM [Order]
WHERE TotalPrice Between 10 and 100;


Use SimpleOrder;

SELECT * 
FROM OrderItem
WHERE ProductID IN (SELECT ProductID FROM Product WHERE ProductName = 'Shoes');
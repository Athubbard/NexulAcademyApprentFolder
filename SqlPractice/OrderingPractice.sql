Use SimpleOrder;

SELECT OrderId, TotalPrice
FROM [Order]
ORDER BY TotalPrice DESC;

Use SimpleOrder;

SELECT ProductName
FROM Product
ORDER BY ProductName ASC;

Use SimpleOrder;

SELECT TotalPrice, ItemCount
FROM [Order]
WHERE TotalPrice > 10
ORDER BY ItemCount ASC;

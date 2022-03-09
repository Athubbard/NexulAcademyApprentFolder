Use SimpleOrder;

INSERT INTO [Order]
(CustomerId, OrderDate, TotalPrice, ItemCount, OrderStatus)
VALUES 
(1, '3-9-2022', $101, 1, 'placed');



SELECT Round(TotalPrice, 1) AS TotalPriceRounded, OrderId
FROM [Order]
WHERE TotalPrice > 100;


Use SimpleOrder;
SELECT CAST(ROUND(TotalPrice/ ItemCount, 2)AS Decimal(18,2)) AS AverageCOST, TotalPrice, ItemCount, OrderId 
FROM [Order];

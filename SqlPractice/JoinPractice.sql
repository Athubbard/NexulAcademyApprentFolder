Use SimpleOrder;

SELECT o.CustomerId, o.OrderDate, o.TotalPrice, i.Quantity, i.ProductId, p.ProductName, p.ProductPrice
FROM OrderItem i
JOIN [Order] o ON o.OrderId = i.OrderId
JOIN Product p ON p.ProductId = i.ProductId
JOIN Customer c ON o.CustomerId = c.CustomerId
WHERE o.CustomerId = 1;
Use SimpleOrder;

SELECT i.ProductId, MAX(o.OrderDate) AS MostRecentOrder
FROM OrderItem i
JOIN [Order] o ON i.OrderId = o.OrderId
GROUP BY i.ProductId


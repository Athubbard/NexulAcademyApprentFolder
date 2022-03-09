Use SimpleOrder;

INSERT INTO Product 
(ProductName, ProductPrice)

VALUES
('Purse', $10.50);


INSERT INTO [Order]
(CustomerId, OrderDate, TotalPrice, ItemCount, OrderStatus)

VALUES 
(1, '3-9-2022', $10.00, 1, 'placed');

Use SimpleOrder;

INSERT INTO Product 
(ProductName, ProductPrice)

VALUES
('Tablet', $100.50);



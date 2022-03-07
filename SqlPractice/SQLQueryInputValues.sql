Use SimpleOrder;

Insert Into Customer 
(FirstName, LastName, BirthDate, Email)

Values
('Alvin', 'Seville', '2000-01-01', 'example1@email.com'),
('Theordore', 'Seville', '2001-02-02', 'example2@email.com'),
('Simone', 'Seville', '2002-03-03', 'example3@email.com');


Insert Into Product 
(ProductName, ProductPrice)

Values
('Cookies', $3.50),
('Shoes', $30);

Insert Into [Order]
(CustomerId, OrderDate, TotalPrice, ItemCount, OrderStatus)

Values
(1,'3-7-2019', $33.50, 2, 'placed');
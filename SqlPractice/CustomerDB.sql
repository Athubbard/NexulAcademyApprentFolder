
Use SimpleOrder;

drop table IF EXISTS Customer;

create table Customer (
CustomerId int NOT NULL IDENTITY(1,1) PRIMARY KEY,
FirstName char(20) NOT NULL, 
LastName char(20) NOT NULL,
BirthDate date NOT NULL,
Email varchar NOT NULL

);

drop table IF EXISTS [Order];

Create table [Order] (
[OrderId] int  IDENTITY(1,1) PRIMARY KEY NOT NULL,
CustomerId int FOREIGN KEY REFERENCES Customer(CustomerId) NOT NULL,
OrderDate datetimeoffset Default GETDATE()NOT NULL,
TotalPrice decimal NOT NULL,
ItemCount int NOT NULL,
OrderStatus varchar(20) DEFAULT ('placed') NOT NULL

);

create table Product (
ProductId int IDENTITY(1,1) PRIMARY KEY NOT NULL,
ProductName char NOT NULL,
ProductPrice decimal NOT NULL,
);

create table OrderItem (
OrderItemId int PRIMARY KEY IDENTITY(1,1) NOT NULL,
ProductId int FOREIGN KEY REFERENCES Product(ProductId) NOT NULL,
[OrderId] int FOREIGN KEY REFERENCES [Order](OrderId)NOT NULL,
ItemPrice decimal NOT NULL,
Quantity int NOT NULL,
);
INSERT INTO Orders (OrderID, CustomerID, OrderDate, RequiredDate, ShippedDate)
VALUES (21, 3, "2012-02-04", "2012-03-09", "2012-04-05");
INSERT INTO OrderDetails (OrderDetailID, OrderID, ProductID, UnitPrice, Quantity)
Values (48, 21, 5, 9.97, 70);
INSERT INTO OrderDetails (OrderDetailID, OrderID, ProductID, UnitPrice, Quantity)
Values (49, 21, 4, 1.39, 30);
Insert Into Customers (CustomerID, CompanyName, ContactName, ContactTitle, Address, City, State)
Values (6, "Vitalis", "André Hernández", "Owner", "Av. Chapultepec 43", "México City", "Mexico City");
Select * FROM Orders Where CustomerID = 3;
Update Orders SET CustomerID = 6 Where CustomerID = 3;
DELETE FROM OrderDetails
Where OrderID in (13, 17);
DELETE FROM Orders
Where CustomerID = 5;
Where CustomerID = 5;
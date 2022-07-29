SELECT OrderID, CONVERT(varchar, OrderDate, 23) as Date, CompanyName
FROM Orders
JOIN Shippers
	ON ShipVia = ShipperID
WHERE OrderID < 10300
ORDER BY OrderID ASC;

--you can join on a Primary key to a foriegn key`

select OrderId, ShipVia, ShipperId, EmployeeID, CustomerID, CONVERT(varchar,OrderDate,23) as Date, CompanyName 
from Orders 
join Shippers
    on ShipVia = ShipperID
Where OrderID < 10300
order by OrderId

SELECT ProductID, ProductName, UnitsInStock, ReorderLevel
FROM Products
WHERE UnitsInStock < ReorderLevel
ORDER BY ProductID ASC;

select ProductId, ProductName, UnitsInStock, ReorderLevel
from Products
where UnitsInStock < ReorderLevel
Order by ProductID 
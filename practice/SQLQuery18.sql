-- we want to view the product name supplier and product id but we need to join Supplier table and Products table.


SELECT ProductID, ProductName, CompanyName AS Supplier
FROM Products JOIN Suppliers
	ON Products.SupplierID = Suppliers.SupplierID
ORDER BY ProductID ASC;

select Products.ProductId, Products.ProductName, Suppliers.CompanyName, Suppliers.SupplierId
from Products join Suppliers
    ON Products.SupplierID = Suppliers.SupplierID
ORDER BY ProductID ASC
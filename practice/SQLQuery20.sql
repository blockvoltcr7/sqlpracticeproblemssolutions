SELECT CategoryName, COUNT(*) AS TotalProducts
FROM Products
JOIN Categories
	ON Products.CategoryID = Categories.CategoryID
GROUP BY CategoryName
ORDER BY TotalProducts DESC;

select CategoryName, COUNT(*) as TotalProducts
FROM Categories
JOIN Products
on Categories.CategoryId = Products.CategoryId
group by CategoryName
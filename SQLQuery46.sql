;WITH LateOrders AS
(
	SELECT 
		EmployeeID,
		COUNT(*) AS LateOrders
	FROM Orders
	WHERE ShippedDate > RequiredDate
	GROUP BY EmployeeID
), AllOrders AS
(
	SELECT 
		EmployeeID,
		COUNT(*) AS TotalOrders
	FROM Orders
	GROUP BY EmployeeID
)
SELECT
	Employees.EmployeeID,
	Employees.LastName,
	AllOrders.TotalOrders,
	ISNULL(LateOrders.LateOrders, 0) AS LateOrders,
	(CAST(LateOrders.LateOrders AS DECIMAL)/AllOrders.TotalOrders) AS LateOrders
FROM Employees
JOIN AllOrders
	ON AllOrders.EmployeeID = Employees.EmployeeID
LEFT JOIN LateOrders
	ON LateOrders.EmployeeID = Employees.EmployeeID
ORDER BY Employees.EmployeeID ASC;
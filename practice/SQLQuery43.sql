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
	LateOrders.LateOrders
FROM Employees
JOIN AllOrders
	ON AllOrders.EmployeeID = Employees.EmployeeID
JOIN LateOrders
	ON LateOrders.EmployeeID = Employees.EmployeeID;
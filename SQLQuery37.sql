SELECT TOP 2 PERCENT Orders.OrderID
FROM Orders
ORDER BY RAND();
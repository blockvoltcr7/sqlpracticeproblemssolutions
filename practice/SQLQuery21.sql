SELECT Country, City, COUNT(*) AS TotalCustomers
FROM Customers
GROUP BY Country, City;

Select Country, City, COUNT(*) AS TotalCustomers
FROM Customers
group BY Country, City
order by Country
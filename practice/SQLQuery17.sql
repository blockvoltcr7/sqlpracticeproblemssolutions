--get all the different values in the customer table for ContactTitles. Include the count for each ContactTitle
--basically get the total count for each ContactTitle

SELECT ContactTitle, COUNT(ContactTitle) AS TotalContactTitle
FROM Customers
GROUP BY ContactTitle
ORDER BY TotalContactTitle DESC;


-- my solution, i should specify the exact column to count instead of using * to grab all 
select ContactTitle, COUNT(*) as TotalContactTitle 
from Customers
group by ContactTitle
order by TotalContactTitle DESC
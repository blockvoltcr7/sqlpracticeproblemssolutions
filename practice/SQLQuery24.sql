SELECT CustomerID, CompanyName, Region
FROM Customers
ORDER BY (CASE
			WHEN Region IS NULL THEN 1
			ELSE 0
		  END), Region ASC;


-- your giving the null regions a 1 because when you order by Region ASC 0 is less than 1 so all the nulls will be after 0 because i gave
-- all the nulls a 1, everything else is 0 but the NULL regions so thats why all the NULL regions will be at the end.
select CustomerID, CompanyName, Region
from Customers
Order By 
(CASE
WHEN Region IS NULL 
THEN 1 ELSE 0 END),
Region ASC;
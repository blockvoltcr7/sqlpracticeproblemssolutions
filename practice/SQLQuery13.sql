-- multiply the unit price and quanity and add it as a field called total price

select OrderId, ProductId, UnitPrice, Quantity, (UnitPrice*Quantity) as TotalPrice from OrderDetails
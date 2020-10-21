USE Northwind
SELECT SUM(Quantity * CONVERT(money, UnitPrice * (1 - Discount))) AS Total
FROM [Order Details]
WHERE
OrderID = 10250
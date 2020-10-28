USE Northwind
SELECT TOP 10 WITH TIES OrderID, SUM(CONVERT(money, Quantity * UnitPrice * (1 - Discount))) AS Total
FROM [Order Details]
GROUP BY OrderID
ORDER BY Total DESC
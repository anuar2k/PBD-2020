USE Northwind
SELECT OrderID, SUM(CONVERT(money, Quantity * UnitPrice * (1 - Discount))) AS Total
FROM [Order Details]
GROUP BY OrderID
ORDER BY Total DESC
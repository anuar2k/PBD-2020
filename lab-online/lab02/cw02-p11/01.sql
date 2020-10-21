USE Northwind
SELECT OrderID, MAX(UnitPrice) AS MaxPrice FROM [Order Details]
GROUP BY OrderID
ORDER BY MaxPrice
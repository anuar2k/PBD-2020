USE Northwind
SELECT OrderID FROM [Order Details]
GROUP BY OrderID
HAVING COUNT(*) > 5
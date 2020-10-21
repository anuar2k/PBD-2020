USE Northwind
SELECT TOP 1 ShipVia AS OrderCount FROM Orders
WHERE YEAR(OrderDate) = 1997
GROUP BY ShipVia
ORDER BY COUNT(*) DESC

USE Northwind
SELECT TOP 1 ShipVia, COUNT(*) AS OrderCount FROM Orders
WHERE YEAR(ShippedDate) = 1997
GROUP BY ShipVia
ORDER BY COUNT(*) DESC

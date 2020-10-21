USE Northwind
SELECT ShipVia, COUNT(*) AS OrderCount FROM Orders
GROUP BY ShipVia

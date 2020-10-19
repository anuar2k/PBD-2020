USE Northwind
SELECT OrderID, OrderDate, CustomerID
FROM Orders
WHERE ShipCountry = 'Argentina'
  AND (ShippedDate IS NULL OR ShippedDate > GETDATE())

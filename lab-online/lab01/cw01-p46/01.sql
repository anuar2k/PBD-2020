USE Northwind
SELECT OrderID, OrderDate, CustomerID
FROM Orders
WHERE ShippedDate IS NULL
  AND ShipCountry = 'Argentina'

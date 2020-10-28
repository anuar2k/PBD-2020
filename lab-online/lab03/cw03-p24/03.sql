USE Northwind
SELECT DISTINCT C.CustomerID, ContactName, C.Phone
FROM Orders
JOIN Customers C ON Orders.CustomerID = C.CustomerID
JOIN Shippers S ON Orders.ShipVia = S.ShipperID
WHERE YEAR(ShippedDate) = 1997 AND
      S.CompanyName = 'United Package'
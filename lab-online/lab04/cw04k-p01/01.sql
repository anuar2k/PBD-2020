USE Northwind
SELECT O.CustomerID, O.ContactName, O.Phone
FROM Customers O
WHERE O.CustomerID IN (
    SELECT I.CustomerID
    FROM Orders I
    JOIN Shippers S ON I.ShipVia = S.ShipperID
    WHERE YEAR(I.OrderDate) = 1997 AND
          S.CompanyName = 'United Package'
    )
USE Northwind
SELECT ContactName, Address, PostalCode, City, Country
FROM Customers
LEFT JOIN Orders O ON Customers.CustomerID = O.CustomerID AND YEAR(O.OrderDate) = 1997
WHERE OrderID IS NULL